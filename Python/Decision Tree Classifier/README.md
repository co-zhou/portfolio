# Decision Tree Classifier

A decision tree classifier implemented from scratch in pure Python (no scikit-learn). It greedily grows the tree by choosing, at every node, the feature and split threshold that minimize the entropy impurity of the resulting children. Tree growth is constrained by an impurity threshold and a maximum depth to prevent overfitting.

The classifier is trained on a labeled dataset and evaluated through `evaluate.py`, which runs training and testing and reports classification metrics.

## Run

`python evaluate.py`
