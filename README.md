# Encrypt and Decrypt Files

This repository contains a bash script that allows you to easily encrypt and decrypt files using OpenSSL. The script uses `figlet` and `lolcat` for enhanced visual output.

## Prerequisites

Ensure you have the following tools installed on your system:
- `figlet` for ASCII art text display
- `lolcat` for colorizing text output
- `openssl` for file encryption and decryption

## Installation

Follow these steps to install the necessary tools, clone the repository, and run the script:

1. **Update package lists**:

    ```bash
    sudo apt-get update
    ```

2. **Install dependencies**:

    ```bash
    sudo apt-get install -y figlet lolcat openssl
    ```

3. **Clone the Git repository**:

    ```bash
    git clone https://github.com/DevarshOza/EncryptDecryptFile.git
    ```

4. **Navigate into the repository directory**:

    ```bash
    cd EncryptDecryptFile
    ```

5. **Make the script executable**:

    ```bash
    chmod +x en_dc_file.sh
    ```

6. **Run the script**:

    ```bash
    ./en_dc_file.sh
    ```

## Usage

Upon running the script, you will be presented with a menu to choose between encrypting or decrypting a file. Follow the on-screen prompts to select a file and enter the necessary passwords for encryption or decryption.

### Encrypting a File

1. Choose the option to encrypt a file.
2. Select a file from the current directory.
3. Enter an encryption password when prompted.
4. The encrypted file will be saved with a prefix `encrypted_`.

### Decrypting a File

1. Choose the option to decrypt a file.
2. Select a file from the current directory (must be an encrypted file).
3. Enter the decryption password when prompted.
4. The decrypted file will be saved with a prefix `decrypted_`.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Feel free to submit issues, suggest features, or contribute code. Please follow me if you wish to contribute.

