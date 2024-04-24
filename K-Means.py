import matplotlib.pyplot as plt

x = [4, 5, 10, 4, 3, 11, 14 , 6, 10, 12]
y = [21, 19, 24, 17, 16, 25, 24, 22, 21, 21]

plt.figure(1)
plt.scatter(x, y)
plt.show()


from sklearn.cluster import KMeans
data = list(zip(x, y))
kmeans = KMeans(n_clusters=3)
kmeans.fit(data)

plt.figure(2)
plt.scatter(x, y, c=kmeans.labels_)
plt.show()