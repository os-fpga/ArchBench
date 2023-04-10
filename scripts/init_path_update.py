import os

path=os.getcwd()+"/rtl"

f = open("./rtl/vexriscv_uart.v",'r')
file=f.read()
file=file.replace("INIT_PATH",path)
f.close()
dos = open("./rtl/vexriscv_uart.v",'w+')
dos.write(file)
dos.close()
