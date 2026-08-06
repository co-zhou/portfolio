# Unsupervised Learning

Clusters glass samples into categories from their measured attributes using three different unsupervised learning algorithms from scikit-learn.

The pipeline reduces the feature space with Principal Component Analysis (PCA), then clusters the data with K-Means, Mean Shift, and DBSCAN. Each clustering is evaluated against the true glass type labels using homogeneity, completeness, and V-measure scores, and the results are visualized with density scatter plots.

## Run

`python Unsupervised.py`
