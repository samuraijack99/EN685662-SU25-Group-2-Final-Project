FROM tensorflow/tensorflow:latest

# Set working directory inside the container
WORKDIR /tf

# Install required Python packages

# Add OpenCV dependencies for image processing and display
RUN apt-get update && apt-get install -y libgl1 libglib2.0-0 libsm6 libxext6 libxrender-dev

RUN pip install --no-cache-dir \
    kagglehub \
    opencv-python \
    openpyxl \
    matplotlib \
    nltk \
    seaborn \
    numpy \
    pandas \
    scipy \
    scikit-learn \
    statsmodels \
    torch torchvision torchaudio \ 
    yfinance \ 
    ultralytics \
    jupyter

# Copy notebook files (optional)
# COPY . .

# Optional: clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Start a bash shell or change to Jupyter as needed
CMD ["bash"]
