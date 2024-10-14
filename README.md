
# Installing and Running iSpin with WSL and Ubuntu on Windows

This guide provides step-by-step instructions to install the Spin model checker and iSpin on Windows using the Windows Subsystem for Linux (WSL) with Ubuntu.

## Prerequisites

- Windows 10 or 11 with WSL 2 support.

---

## Step 1: Install WSL on Windows

1. **Open PowerShell as Administrator**:
   - Press `Windows + X` and select **Windows PowerShell (Admin)**.

2. **Install WSL**:
   ```powershell
   wsl --install
   ```
   - This command installs WSL 2 and the default Linux distribution (Ubuntu).
   - Restart your computer if prompted.

3. **Launch Ubuntu**:
   - After the restart, search for **Ubuntu** in the Start menu and launch it. The setup may take a few moments to complete.

---

## Step 2: Install Required Packages on Ubuntu (WSL)

1. **Update the Package List**:
   ```bash
   sudo apt update
   sudo apt upgrade
   ```

2. **Install Spin**:
   ```bash
   sudo apt install spin
   ```

3. **Install Tcl/Tk** (required for iSpin):
   ```bash
   sudo apt install tcl tk
   ```

4. **Install Graphviz** (for visualizations):
   ```bash
   sudo apt install graphviz
   ```

5. **Install GCC** (if not already installed):
   ```bash
   sudo apt install gcc
   ```

---

## Step 3: Download and Set Up iSpin

1. Clone this repository containing all files from the `pc_spin651.zip` archive:
   ```bash
   git clone mhdatheek136/spin_model_checker
   ```

---

## Step 4: Run iSpin (Using wish)

iSpin requires the `wish` interpreter, which is provided by Tcl/Tk.

1. **Launch iSpin with wish**:
   ```bash
   wish ispin.tcl
   ```
   - If everything is installed correctly, the iSpin graphical interface should open in a new window.

---

## Step 5: Using Spin and iSpin in WSL (Optional)

For those who want to use Spin directly from the command line in the WSL environment:

1. **Running a Promela Model**:
   - Write a Promela model and save it as a `.pml` file.
   - Navigate to the directory containing the `.pml` file and execute:
     ```bash
     spin -a model.pml
     ```

2. **Compile the Generated pan.c File**:
   ```bash
   gcc -o pan pan.c
   ```

3. **Run the Verifier**:
   ```bash
   ./pan
   ```

---

## Summary of Commands

- **Install WSL**:  
  ```powershell
  wsl --install
  ```

- **Update Ubuntu**:  
  ```bash
  sudo apt update
  sudo apt upgrade
  ```

- **Install Spin**:  
  ```bash
  sudo apt install spin
  ```

- **Install Tcl/Tk**:  
  ```bash
  sudo apt install tcl tk
  ```

- **Install Graphviz**:  
  ```bash
  sudo apt install graphviz
  ```

- **Run iSpin**:  
  ```bash
  wish ispin.tcl
  ```

---

## Conclusion

Using WSL with Ubuntu provides a Linux-like environment on Windows, making it easier to run tools like iSpin. The optional Step 5 allows for command-line verifications directly through WSL, ideal for those familiar with Linux tools.

Feel free to modify this guide as needed to suit your installation process or environment.

---

### Credits

This setup guide is based on the Spin model checker resources provided at [Spinroot](https://spinroot.com/spin/Src/index.html).

