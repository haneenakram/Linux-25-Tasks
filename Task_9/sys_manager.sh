#!/bin/bash
show_menu(){
    echo "========== Linux System Manager =========="
    echo "1. Show System Information"
    echo "2. Check File Permissions"
    echo "3. Change File Permissions"
    echo "4. Compress a File/Directory"
    echo "5. Decompress a File"
    echo "6. Exit"
    echo "=========================================="
}
show_system_info(){
    echo "Current User: $(whoami)" 
}

check_file_permissions(){
    read -p "Enter the filename: " filename
    if [ -e $filename ];then
    #-d ' ' specifies that the delimiter is a space.
    #-f 1 specifies that the first field should be extracted.
    echo "Permissions for $filename: $(ls -l $filename | cut -d ' ' -f 1)"
    else
        echo "File not found."
    fi
}
change_file_permissions(){
    read -p "Enter the filename: " filename
    if [ -e $filename ];then
        read -p "Enter new permission: " permission
        chmod "$permission" "$filename"
        echo "Permissions changed successfully."
    else
        echo "file not found"
    fi
}

compress_file(){
    read -p "Enter the file/directory name: " name
    if [ -e "$name" ]; then
        echo "Choose compression type:"
        echo "1. tar.gz"
        echo "2. zip"
        read -p "Enter choice: " choice
        case $choice in
            1)
                tar -czvf $name.tar.gz $name
                echo "Compression successful: $name.tar.gz created."
                ;;
            2)
                zip -r $name.zip $name
                echo "Compression successful: $name.zip created."
                ;;
            *)
                echo "Invalid choice."
                ;;
        esac
    else
        echo "File or directory not found."
    fi
}
decompress_file(){
    read -p "Enter the compressed file name: " filename
    if [ -e "$filename" ]; then
        case $filename in
            *.tar.gz)
                tar -xzvf $filename
                echo "Decompression successful."
                ;;
            *.zip)
                unzip $filename
                echo "Decompression successful."
                ;;
            *)
                echo "Unsupported file type."
                ;;
        esac
    else
        echo "File not found."
    fi
}
while true;do 
    show_menu
    read -p "enter your choice: " choice

    case $choice in
    1) show_system_info ;;
    2) check_file_permissions ;;
    3) change_file_permissions ;;
    4) compress_file ;;
    5) decompress_file ;;
    6)echo "Exiting the system manager. Goodbye!"; exit 0 ;;
    *)echo "Invalid choice. Please enter a number between 1 and 6." ;;
    esac

done