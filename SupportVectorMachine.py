import matplotlib.pyplot as plt
import numpy as np
X_train=np.array([[3, 1],[3, -1],[6, 1],[6, -1],[1,0],[0,1],[0,-1],[-1,0],[2,3],[2,-3]])
y_train=[1, 1 ,1, 1, 0, 0, 0, 0,0,0]

plt.figure(1)
plt.scatter(X_train[:,0], X_train[:,1])
plt.show()

# Building the classifier
from sklearn import svm
# Initialize SVM classifier
clf = svm.SVC(kernel='linear')

clf = clf.fit(X_train, y_train)
predictions = clf.predict(X_train)
print(predictions)

predictions = clf.predict([[-4,2]])
print(predictions)

support_vectors = clf.support_vectors_
print(support_vectors)

from  sklearn.metrics import classification_report, confusion_matrix
predictions = clf.predict(X_train)
cm = confusion_matrix(y_train, predictions)
print(cm)