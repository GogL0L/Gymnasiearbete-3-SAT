import numpy as np
import tensorflow as tf
from tensorflow import keras
from tensorflow.keras import layers

x_train = np.load('data/x_train.npy')
y_train = np.load('data/y_train.npy')
x_test = np.load('data/x_test.npy')
y_test = np.load('data/y_test.npy')


x_train, x_test = x_train / 10.0, x_test / 10.0

model = tf.keras.models.Sequential([
 # tf.keras.layers.Flatten(input_shape=(28, 28)),
 tf.keras.layers.Dense(128, activation='relu'),
 tf.keras.layers.Dense(128, activation='relu'),
 tf.keras.layers.Dense(128, activation='relu'),
 tf.keras.layers.Dense(128, activation='relu'),
 tf.keras.layers.Dense(128, activation='relu'),
 tf.keras.layers.Dense(128, activation='relu'),
 tf.keras.layers.Dense(128, activation='relu'),
 tf.keras.layers.Dense(128, activation='relu'),
 tf.keras.layers.Dense(128, activation='relu'),
 tf.keras.layers.Dense(128, activation='relu'),
 # tf.keras.layers.Dropout(0.2),
 tf.keras.layers.Dense(2)
])


model.compile(optimizer = 'SGD',
              loss='binary_crossentropy',
              metrics=['accuracy'])

model.fit(x_train, y_train, epochs=5)
model.evaluate(x_test, y_test, verbose=2)

# saving and loading models
#
# model.save('name_of_model.model')
# loaded_model = tf.keras.models.load_model('name_of_model.model')
# predictions = loaded_model.predict([x_test])

