# Check if the virtual environment exists, if not, create it
if [ ! -d "venv" ]; then
    echo "Creating Python virtual environment..."
    python3 -m venv venv
else
    echo "Virtual environment already exists."
fi

# Activate the virtual environment
# Note: For Windows, this script needs adjustment
source venv/bin/activate

# Install dependencies
echo "Installing dependencies..."
pip3 install -r requirements.txt

python3 -m spacy download en_core_web_sm

echo "Setup complete."