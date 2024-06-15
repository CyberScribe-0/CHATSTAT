mkdir -p ~/.streamlit/

echo "\
[server]\n\
port = $PORT\n\
enableCORS = false\n\
headless = true\n\
\n\
" > ~/.streamlit/config.toml

# Install required dependencies
pip install -r requirements.txt

# Optional: Load environment variables
# export API_KEY="your_api_key"

# Start Streamlit application
streamlit run app.py
