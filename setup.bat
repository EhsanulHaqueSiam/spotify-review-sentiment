@echo off
echo 🎵 Setting up Spotify Sentiment Analysis Project...

REM Check if uv is installed
uv --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ uv is not installed. Please install uv first:
    echo    Visit: https://docs.astral.sh/uv/getting-started/installation/
    echo    Or run: powershell -c "irm https://astral.sh/uv/install.ps1 | iex"
    pause
    exit /b 1
) else (
    echo ✅ uv is already installed
)

REM Create virtual environment and install dependencies
echo 📦 Installing dependencies with uv...
uv sync

REM Check if virtual environment was created
if exist ".venv" (
    echo 🔧 Setting up additional requirements...
    
    REM Activate virtual environment
    call .venv\Scripts\activate.bat
    
    REM Install pip (required for spaCy model download)
    echo 🔧 Installing pip...
    uv add pip
    
    REM Download spaCy English model
    echo 📚 Downloading spaCy English model...
    python -m spacy download en_core_web_sm
    
    REM Download NLTK data
    echo 📖 Pre-downloading NLTK data...
    python -c "import nltk; nltk.download('punkt', quiet=True); nltk.download('stopwords', quiet=True); nltk.download('wordnet', quiet=True); nltk.download('averaged_perceptron_tagger', quiet=True); print('✅ NLTK data downloaded successfully')"
    
    REM Verify installation
    echo 🧪 Verifying installation...
    python -c "import pandas as pd; import numpy as np; import sklearn; import nltk; import spacy; import matplotlib; import seaborn; import kagglehub; import jupyter; print('✅ All packages installed successfully!'); print('🎵 Ready for Spotify sentiment analysis!')"
    
    if %errorlevel% equ 0 (
        echo.
        echo 🎉 Setup completed successfully!
        echo.
        echo 📋 Next steps:
        echo 1. Activate the virtual environment: .venv\Scripts\activate.bat
        echo 2. Set up Kaggle API credentials (see README.md)
        echo 3. Start Jupyter: jupyter notebook
        echo 4. Open spotify_sentiment_analysis.ipynb
        echo.
        echo 📖 For detailed instructions, see README.md
    ) else (
        echo ❌ Setup verification failed. Please check the errors above.
        pause
        exit /b 1
    )
    
) else (
    echo ❌ Failed to create virtual environment
    pause
    exit /b 1
)

pause