# 🎵 Spotify Review Sentiment Analysis using Naïve Bayes

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/EhsanulHaqueSiam/spotify-review-sentiment/blob/main/spotify_sentiment_analysis_colab.ipynb)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/EhsanulHaqueSiam/spotify-review-sentiment)
[![Python](https://img.shields.io/badge/Python-3.8+-blue?logo=python)](https://python.org)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

A comprehensive sentiment analysis project that classifies Spotify user reviews using MultinomialNB with advanced text preprocessing techniques. This project demonstrates the complete machine learning pipeline from data loading to model evaluation.

## 🚀 Quick Start

### 🌐 **Option 1: Google Colab (Recommended - Zero Setup)**

**Click the "Open in Colab" badge above for instant access!**

1. **Open in Colab**: Click the badge above or [this link](https://colab.research.google.com/github/EhsanulHaqueSiam/spotify-review-sentiment/blob/main/spotify_sentiment_analysis_colab.ipynb)
2. **Set up Kaggle credentials**: Use Colab Secrets (🔑 icon in sidebar)
3. **Run all cells**: Runtime → Run all - everything installs automatically!

### 💻 **Option 2: Local Development**

```bash
# Clone the repository
git clone https://github.com/EhsanulHaqueSiam/spotify-review-sentiment.git
cd spotify-review-sentiment

# Run automated setup
./setup.sh          # Linux/Mac
# or
setup.bat           # Windows

# Activate environment and start Jupyter
source .venv/bin/activate
jupyter notebook
```

## 📊 Dataset & Results

### 📈 **Dataset Information**
- **Source**: [Kaggle - Spotify Dataset](https://www.kaggle.com/datasets/alexandrakim2201/spotify-dataset)
- **Size**: 52,702 user reviews
- **Columns**: 
  - `Review`: User review text
  - `label`: Sentiment (POSITIVE/NEGATIVE)
- **Distribution**: 55.8% NEGATIVE, 44.2% POSITIVE

### 🎯 **Expected Results**
- **Accuracy**: Typically 85-90%
- **Features**: 5000+ TF-IDF features with unigrams/bigrams
- **Model**: MultinomialNB with Laplace smoothing
- **Evaluation**: Comprehensive metrics with visualizations

## 🔧 Features & Techniques

### ✅ **Text Preprocessing Pipeline**
- **Tokenization**: Breaking text into individual words
- **Case Folding**: Converting text to lowercase
- **Punctuation Removal**: Cleaning special characters
- **Stop Words Removal**: Filtering common words
- **Stemming**: Reducing words to root form
- **TF-IDF Vectorization**: Converting text to numerical features

### 🤖 **Machine Learning**
- **Algorithm**: MultinomialNB from scikit-learn
- **Features**: TF-IDF with unigrams and bigrams
- **Evaluation**: Accuracy, Precision, Recall, F1-Score
- **Visualization**: Confusion matrix, performance charts

### 📱 **Google Colab Integration**
- **Auto-installation**: All packages install automatically
- **Kaggle Secrets**: Secure credential management
- **Mobile-friendly**: Works on phones/tablets
- **Error handling**: Robust fallbacks and sample data

## 🛠️ Setup Instructions

### 🔑 **Kaggle API Setup**

#### **For Google Colab (Recommended):**
1. Click the 🔑 key icon in the left sidebar
2. Add two secrets:
   - Name: `KAGGLE_USERNAME`, Value: your_kaggle_username
   - Name: `KAGGLE_KEY`, Value: your_kaggle_api_key
3. Enable notebook access for both secrets
4. Get credentials from [Kaggle Account Settings](https://www.kaggle.com/settings/account)

#### **For Local Development:**
1. Create a Kaggle account at https://www.kaggle.com
2. Go to Account settings and create a new API token
3. Download `kaggle.json` and place it in `~/.kaggle/` directory
4. Set permissions: `chmod 600 ~/.kaggle/kaggle.json`

### 📦 **Dependencies**

#### **Core Libraries:**
- `pandas` - Data manipulation and analysis
- `numpy` - Numerical computing
- `scikit-learn` - Machine learning algorithms
- `nltk` - Natural language processing
- `spacy` - Advanced NLP processing
- `matplotlib & seaborn` - Data visualization
- `kagglehub` - Kaggle dataset loading

#### **Development Tools:**
- `jupyter` - Interactive notebook environment
- `uv` - Fast Python package manager (local setup)

## 📁 Project Structure

```
spotify-review-sentiment/
├── 📓 NOTEBOOKS
│   ├── spotify_sentiment_analysis.ipynb          # Local development version
│   └── spotify_sentiment_analysis_colab.ipynb    # Google Colab optimized version
│
├── ⚙️ CONFIGURATION
│   ├── pyproject.toml                            # Dependencies & project config
│   ├── setup.sh / setup.bat                     # Automated setup scripts
│   └── .venv/                                    # Virtual environment (local)
│
└── 📚 DOCUMENTATION
    ├── README.md                                 # This comprehensive guide
    └── LICENSE                                   # MIT License
```

## 📋 Notebook Tasks Overview

The notebook is organized into **17 comprehensive tasks**:

### **Tasks 1-4: Setup & Data Loading**
1. **Import Libraries** - Basic data handling packages
2. **Load Dataset** - 52,702 Spotify reviews from Kaggle
3. **Data Exploration** - Sentiment distribution analysis
4. **Initialize Tools** - NLP preprocessing setup

### **Tasks 5-8: Text Processing**
5. **Preprocessing Functions** - Text cleaning pipeline
6. **Apply Preprocessing** - Transform raw text data
7. **TF-IDF Features** - Extract numerical features
8. **Prepare Training Data** - Train/test split

### **Tasks 9-12: Model Training & Evaluation**
9. **Train Model** - MultinomialNB classifier
10. **Make Predictions** - Test set predictions
11. **Basic Metrics** - Accuracy, precision, recall, F1
12. **Classification Report** - Detailed per-class metrics

### **Tasks 13-17: Analysis & Visualization**
13. **Confusion Matrix** - Visual prediction analysis
14. **Feature Analysis** - Most important words per class
15. **Performance Visualization** - Charts and graphs
16. **Sample Predictions** - Individual prediction analysis
17. **Model Summary** - Complete results overview

## 🎯 Assignment Requirements Met

### ✅ **Technical Requirements**
- **Algorithm**: MultinomialNB from scikit-learn ✓
- **Preprocessing**: All required techniques implemented ✓
- **Evaluation**: Comprehensive metrics and analysis ✓
- **Structure**: Each task in separate notebook cell ✓
- **Libraries**: Only allowed packages used ✓

### 📊 **Deliverables**
- **Complete notebook** with 17 tasks ✓
- **Text preprocessing** pipeline ✓
- **Model training** and evaluation ✓
- **Performance analysis** with visualizations ✓
- **Professional documentation** ✓

## 🆘 Troubleshooting

### **Common Issues & Solutions:**

#### **🔍 Google Colab Issues:**
- **"Kaggle dataset not found"**: Set up Colab Secrets or use manual credentials
- **"Package installation failed"**: Restart runtime (Runtime → Restart runtime)
- **"spaCy model not found"**: Notebook auto-installs the model
- **"Out of memory"**: Use Runtime → Change runtime type → High-RAM

#### **💻 Local Development Issues:**
- **Environment issues**: Run `./setup.sh` or `setup.bat` again
- **Package conflicts**: Delete `.venv` folder and re-run setup
- **Kaggle credentials**: Ensure `~/.kaggle/kaggle.json` exists and has correct permissions

#### **📊 Dataset Issues:**
- **Download fails**: Check internet connection and Kaggle credentials
- **Sample data**: Notebook creates sample data if main dataset fails
- **Column errors**: Notebook handles different column names automatically

### **💡 Pro Tips:**
- **Mobile usage**: Download Google Colab app for best mobile experience
- **Sharing**: Use Colab's built-in sharing features
- **Saving**: Colab auto-saves to Google Drive
- **Performance**: Use GPU runtime for faster processing (Runtime → Change runtime type)

## 🎓 Educational Value

This project demonstrates:

### **📚 Machine Learning Concepts**
- Text preprocessing and feature engineering
- Naïve Bayes classification theory and implementation
- Model evaluation and performance metrics
- Cross-validation and train/test splitting

### **🔧 Technical Skills**
- Python programming for data science
- Jupyter notebook development
- Google Colab cloud computing
- Git version control and documentation

### **📊 Data Science Pipeline**
- Data loading and exploration
- Preprocessing and cleaning
- Feature extraction and selection
- Model training and evaluation
- Results visualization and interpretation

## 🤝 Contributing

Contributions are welcome! Please feel free to:
- Report bugs or issues
- Suggest improvements
- Submit pull requests
- Share feedback

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Ehsanul Haque Siam**
- 🌐 GitHub: [@EhsanulHaqueSiam](https://github.com/EhsanulHaqueSiam)
- 📧 Email: ehsanul.siamdev@gmail.com
- 🔗 LinkedIn: [Connect with me](https://linkedin.com/in/EhsanulHaqueSiam)

## 🔗 Links

- **📱 Google Colab**: [Open in Colab](https://colab.research.google.com/github/EhsanulHaqueSiam/spotify-review-sentiment/blob/main/spotify_sentiment_analysis_colab.ipynb)
- **🌐 GitHub Repository**: [spotify-review-sentiment](https://github.com/EhsanulHaqueSiam/spotify-review-sentiment)
- **📊 Dataset Source**: [Kaggle - Spotify Dataset](https://www.kaggle.com/datasets/alexandrakim2201/spotify-dataset)

---

**🎉 Ready to analyze Spotify reviews? Click the "Open in Colab" badge above and start your sentiment analysis journey!** 🚀