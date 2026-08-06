# Neural Networks

A convolutional neural network built with Keras/TensorFlow that classifies silicon wafer defects from microscope images. The model distinguishes between 6 defect categories (edge, pass, deform, total loss, crack, nodule).

The training pipeline includes image preprocessing, shuffling, an 85/15 train/validation split, a CNN with multiple convolution/max-pooling layers, dropout regularization, and a checkpoint callback that saves the best model weights. Performance is analyzed with a confusion matrix and training/validation accuracy curves.

## Run

`python neural_network.py` (originally developed and run in Google Colab)
