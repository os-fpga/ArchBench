import sys

def overwrite_file(source_file, destination_file):
    try:
        # Read the content of the source file
        with open(source_file, 'r') as src_file:
            file_data = src_file.read()
        
        # Write the content to the destination file (overwriting its previous content)
        with open(destination_file, 'w') as dest_file:
            dest_file.write(file_data)
        
        print(f"Content of '{source_file}' has been successfully written to '{destination_file}'.")

    except FileNotFoundError:
        print("One or both of the specified files does not exist.")

# Example usage:
overwrite_file(sys.argv[1],sys.argv[2])