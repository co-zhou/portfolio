# Linear Classifier

A 3-class linear classifier implemented from scratch in Python (no ML libraries). It computes the centroid of each class from the training data, then builds linear decision boundaries that are orthogonal to the lines connecting each pair of centroids. Test samples are classified by which side of the boundaries they fall on.

Results are evaluated through `evaluate.py`, which reports a confusion matrix along with true positive rate, false positive rate, error rate, accuracy, and precision.

## Run

`python evaluate.py`
