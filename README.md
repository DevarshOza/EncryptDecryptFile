Description
Your script, en_dc_file.sh, provides a command-line interface for encrypting and decrypting files using OpenSSL. It allows users to:

Encrypt a file with a password using AES-256-CBC encryption.
Decrypt a file with a password using AES-256-CBC decryption.
Choose files from the current directory and specify output filenames for encrypted or decrypted files.
Display messages with color-coded feedback on the status of encryption and decryption operations.
Dependency Installation and Running Instructions
Update package lists (for Debian-based systems like Ubuntu):

bash
Copy code
sudo apt-get update

Install dependencies:

bash
Copy code
# Install figlet for ASCII text display
sudo apt-get install figlet

# Install lolcat for colorizing text
sudo apt-get install lolcat

# Install openssl for encryption/decryption operations
sudo apt-get install openssl
Clone the Git repository:

bash
Copy code
git clone https://github.com/DevarshOza/EncryptDecryptFile.git
cd EncryptDecryptFile
Make the script executable:

bash
Copy code
chmod +x en_dc_file.sh
Run the script:

bash
Copy code
./en_dc_file.sh
These commands will install the necessary tools, clone the repository containing your script, make the script executable, and then run it. Make sure to follow these steps on a Unix-like system (e.g., Linux or macOS). If you're using a different operating system or package manager, you might need to adjust the installation commands accordingly.
