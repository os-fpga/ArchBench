#!/usr/bin/python3
"""run fabric_bitstream.xml through instance mapping in grouping.tcl"""

import sys
import re 
import os

def dict_aup_nup(k):
    """sort with alpha ascending and numeric ascending"""
    r = re.split(r'(\d+)', k)
    for i in range(1, len(r), 2):
        r[i] =  int(r[i])
    return r
# def dict_aup_nup

def toplogic():
    """run fabric_bitstream.xml through instance mapping in grouping.tcl"""
    assert len(sys.argv) == 4
    (_, groupfile, physfile, bitfile) = sys.argv

    # read grouping.tcl
    inst2before = {}
    inst2cell_idx = {}
    cell_idx2inst = {}
    
    with open(groupfile, encoding='ascii') as gfile:
        # sys.stderr.write(f"Reading {groupfile}\n")
        for line in gfile:
            g = re.search(r'-design_name\s+(\S+)\s+-cell_name\s+(\S+)\s+{(.+)}', line)
            if not g: continue
            (newcell, newinst, insts) = g.groups()
            insts = sorted(insts.split(), key=dict_aup_nup)
            for i, inst in enumerate(insts, start=0):
                inst2before[inst] = newinst
                inst2cell_idx[inst] = (newcell, i)
                cell_idx2inst[(newcell, i)] = inst
            # for inst
        # for line
    # with
    nc = len({nc for nc, i in cell_idx2inst})
    # sys.stderr.write(f"Read {nc:,d} new cells grouping {len(inst2before):,d} instances\n")

    # read physmap.csv
    cell2cell = {}
    with open(physfile, encoding='ascii') as pfile:
        # sys.stderr.write(f"Reading {physfile}\n")
        for line in pfile:
            ff = line.strip().split(',')
            if not ff or ff[0] != "module": continue
            for cell in ff[2:]:
                cell2cell[cell] = ff[1]
            # for cell
        # for line
    # with
    # sys.stderr.write(f"Read {len(cell2cell):,d} cell re-use mappings\n")

    # process fabric_bitstream.xml
    ip = 0
    with open(bitfile, encoding='ascii') as bfile:
        # sys.stderr.write(f"Reading {bitfile}\n")
        for line in bfile:
            #<bit id="7156" value="1" path="fpga_top.grid_io_bottom_5__1_.logical_tile_io_mode_io__19.mem_iopad_0_clk_0.mem_out[1]">
            g = re.match(r'(.* path=")([^"]+)(".*)', line, re.DOTALL)
            if g:
                (lead, path, trail) = g.groups()
                ii = path.split('.')
                inst = ii[1]
                (cell, i) = inst2cell_idx[inst]
                ii[1] = cell_idx2inst[(cell2cell.get(cell, cell), i)]
                ii.insert(1, inst2before[inst])
                line = lead + '.'.join(ii) + trail
                ip += 1
            line = line.replace('CCFF','LATCH')
            sys.stdout.write(line)
        # for line
    # with
    # sys.stderr.write(f"Corrected {ip:,d} config bit instance paths\n")  
# def toplogic
toplogic()


# vim: filetype=python
# vim: tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
# vim: autoindent hlsearch syntax=on fileformat=unix
