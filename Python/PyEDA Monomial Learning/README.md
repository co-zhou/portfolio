# PyEDA Monomial Learning

Uses the PyEDA library's SAT solver to learn the exact cause of an error from boolean sample data - a monomial learning problem from electronic design automation (EDA).

The setup models debugging a system failure: exactly one positive sample represents a test case where an error occurred, all other samples are negative (no error), and the binary features are the input conditions of each test. The program encodes the samples and a cardinality constraint as a SAT problem and solves for the smallest set of features (positive/negative literals) that explains the error.

## Run

`python MonomialLearning.py` (originally developed and run in Google Colab)
