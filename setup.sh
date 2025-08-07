#!/bin/bash

# Spotify Sentiment Analysis Project Setup Script

echo "🎵 Setting up Spotify Sentiment Analysis Project..."

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "❌ uv is not installed. Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    source $HOME/.cargo/env
else
    echo "✅ uv is already installed"
fi

# Create virtual environment and install dependencies
echo "📦 Installing dependencies with uv..."
uv sync

# Activate virtual environment and install additional requirements
echo "🔧 Setting up additional requirements..."

# Check if virtual environment was created
if [ -d ".venv" ]; then
    source .venv/bin/activate
    
    # Install pip (required for spaCy model download)
    echo "🔧 Installing pip..."
    uv add pip
    
    # Download spaCy English model
    echo "📚 Downloading spaCy English model..."
    python -m spacy download en_core_web_sm
    
    # Download NLTK data (will be done in notebook, but we can pre-download some)
    echo "📖 Pre-downloading NLTK data..."
    python -c "
import nltk
try:
    nltk.download('punkt', quiet=True)
    nltk.download('stopwords', quiet=True)
    nltk.download('wordnet', quiet=True)
    nltk.download('averaged_perceptron_tagger', quiet=True)
    print('✅ NLTK data downloaded successfully')
except Exception as e:
    print(f'⚠️  NLTK download warning: {e}')
"
    
    # Verify installation
    echo "🧪 Verifying installation..."
    python -c "
import pandas as pd
import numpy as np
import sklearn
import nltk
import spacy
import matplotlib
import seaborn
import kagglehub
import jupyter
print('✅ All packages installed successfully!')
print('🎵 Ready for Spotify sentiment analysis!')
"
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "🎉 Setup completed successfully!"
        echo ""
        echo "📋 Next steps:"
        echo "1. Activate the virtual environment: source .venv/bin/activate"
        echo "2. Set up Kaggle API credentials (see README.md)"
        echo "3. Start Jupyter: jupyter notebook"
        echo "4. Open spotify_sentiment_analysis.ipynb"
        echo ""
        echo "📖 For detailed instructions, see README.md"
    else
        echo "❌ Setup verification failed. Please check the errors above."
        exit 1
    fi
    
else
    echo "❌ Failed to create virtual environment"
    exit 1
fi