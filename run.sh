#!/bin/bash

echo "🚀 Launching NEOvision: Near-Earth Object Tracker ☄️"
echo "=============================================="

# Step 1: Create virtual environment if not exists
if [ ! -d "venv" ]; then
    echo "🔧 Creating a virtual environment..."
    python3 -m venv venv
fi

# Step 2: Activate the virtual environment
echo "📦 Activating virtual environment..."
source venv/bin/activate

# Step 3: Upgrade pip
echo "⬆️ Upgrading pip..."
pip install --upgrade pip

# Step 4: Install dependencies
if [ -f "requirements.txt" ]; then
    echo "📦 Installing dependencies from requirements.txt..."
    pip install -r requirements.txt
else
    echo "⚠️ requirements.txt not found! Skipping dependency installation."
fi

# Step 5: Launch the app
echo "🌐 Starting the Streamlit app..."
streamlit run main.py

# Optional: Pause before exiting
read -p "🛑 Press [Enter] to deactivate and exit..."

# Deactivate the environment after closing the app
deactivate
