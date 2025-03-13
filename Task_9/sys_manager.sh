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
# check_file_permissions(){

# }
# change_file_permissions(){

# }
# change_file_permissions(){

# }
# compress_file(){

# }
# decompress_file(){

# }
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