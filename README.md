# Application-Installation
This repo is used install AWS CLI and AWS configuration
After executing teh above scripts follow the below instruction for detailed explanation about the scripts::

**Explanation:

1. AWS Variables:**
Replace the values for AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_DEFAULT_REGION with your actual values. You can also set this script to accept them as parameters for a more dynamic approach.
The AWS_OUTPUT_FORMAT is set to json by default, but you can change it to text or table if needed.

**2. Install AWS CLI:**
The script downloads the latest AWS CLI version 2 from the official AWS source, extracts it, and installs it using the ./aws/install command.
Ensure you have unzip installed for the script to extract the AWS CLI installation package. If it's not installed, you can add the installation in the script for systems without unzip:

sudo apt-get install unzip -y    # For Ubuntu/Debian systems

sudo yum install unzip -y        # For RHEL/CentOS systems

** 3. AWS CLI Configuration:**
The script uses the aws configure set command to programmatically set the aws_access_key_id, aws_secret_access_key, region, and output format. This prevents manual interaction, making it ideal for automation.

**4. Verification:**
The aws sts get-caller-identity command is used to verify that the AWS CLI has been properly configured with valid credentials.

**5. Clean up:**
It removes the downloaded installation files to keep your system clean.


AFTER INSTALLATION FOLOW THE BELOW COMMANDS:

chmod +x install_aws_cli.sh

./install_aws_cli.sh
