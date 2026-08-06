# Stock Market Prediction

An LSTM (Long Short-Term Memory) neural network that forecasts S&P 500 stock prices.

Stock market data (Open/High/Low/Close) is pulled live from Yahoo Finance, then preprocessed: features are normalized with MinMax scaling, older data is used for training and recent data for validation, and the series is cascaded into time-step windows that feed the LSTM. A deliberately simple model - one LSTM layer with 32 nodes and one dense layer - is used because predicting a single price series is a simple problem that benefits from avoiding overfitting. The program saves the weights with the lowest validation loss and then forecasts the next day, plotting the results as candlestick charts.

This project demonstrates time-series forecasting, LSTM architecture design, and a practical end-to-end ML pipeline from data acquisition to prediction.

## Run

`python SPX.py`
