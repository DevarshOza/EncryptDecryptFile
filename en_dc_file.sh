#!/bin/bash

# Print header using figlet and lolcat
figlet -f starwars -c "EN - DC" | lolcat
figlet -f digital -c "Encrypt and Decrypt your files" | lolcat
echo ""

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Function to list files in the current directory and prompt for selection
select_file() {
    echo "Files in the current directory:"
    files=($(ls -p | grep -v /))  # List non-directory files in current directory
    select file in "${files[@]}"; do
        if [ ! -z "$file" ]; then
            file_path="./$file"
            echo "Selected file: $file_path"
            break
        else
            echo -e "${RED}Invalid selection. Please choose a file.${NC}"
        fi
    done
}

# Function to encrypt a file
encrypt_file() {
    select_file

    echo "Enter encryption password:"
    read -s password

    # Default output file in the current directory
    output_file="./encrypted_$(basename "$file_path")"

    openssl enc -aes-256-cbc -salt -in "$file_path" -out "$output_file" -k "$password"

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Encryption successful. Encrypted file: $output_file${NC}"
    else
        echo -e "${RED}Encryption failed.${NC}"
    fi
}

# Function to decrypt a file
decrypt_file() {
    select_file

    echo "Enter decryption password:"
    read -s password

    # Default output file in the current directory
    output_file="./decrypted_$(basename "$file_path")"

    openssl enc -d -aes-256-cbc -in "$file_path" -out "$output_file" -k "$password"

    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Decryption successful. Decrypted file: $output_file${NC}"
    else
        echo -e "${RED}Decryption failed.${NC}"
    fi
}

# Main menu loop
while true; do
    echo "Select an option:"
    echo "1. Encrypt file"
    echo "2. Decrypt file"
    echo "3. Exit"

    read choice

    case $choice in
        1)
            encrypt_file
            ;;
        2)
            decrypt_file
            ;;
        3)
            echo "Exiting..."
            break
            ;;
        *)
            echo -e "${RED}Invalid option. Please choose again.${NC}"
            ;;
    esac
done
