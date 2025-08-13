# Enter the Poetry shell
poetry shell

# Now uninstall torch from within the virtual environment
pip uninstall torch torchvision torchaudio -y

# Install CPU-only version
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu

# Exit poetry shell
exit

# Navigate to the app directory
cd /workspaces/option-exp-playground/app

# Install npm dependencies
npm install

# Build the frontend files
npx parcel build src/index.html --dist-dir ../server/static --no-cache --no-source-maps

# Go back to project root
cd /workspaces/option-exp-playground

# Run the server again
poetry run openplayground run