from sklearn.ensemble import IsolationForest
import numpy as np

def score(features):
    model = IsolationForest(contamination=0.01)
    model.fit(features)
    return model.predict(features), model.score_samples(features)
