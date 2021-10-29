Модели с sensivity 0.3, 0.4 и 0.95

Количество эпох - суммарное, то есть обучение происходило вот так:

```
(модель удаляется)
precise-train -e 50 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e50-s4.tflite
precise-train -e 100 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e150-s4.tflite
precise-train -e 200 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e250-s4.tflite
precise-train -e 300 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e550-s4.tflite
precise-train -e 400 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e950-s4.tflite
precise-train -e 550 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e1500-s4.tflite
precise-train -e 700 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e2100-s4.tflite
precise-train -e 900 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e3000-s4.tflite
precise-train -e 1000 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e4000-s4.tflite
precise-train -e 2000 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e6000-s4.tflite
precise-train -e 3000 -s 0.4 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e9000-s4.tflite
```

```
(модель удаляется)
precise-train -e 400 -s 0.95 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e400-s95.tflite
precise-train -e 800 -s 0.95 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e1200-s95.tflite
precise-train -e 800 -s 0.95 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e1200-s95.tflite
precise-train -e 1200 -s 0.95 barrymore.net ../ && precise-test barrymore.net ../  && precise-convert barrymore.net && mv barrymore.tflite barrymore-5617-33614-e2400-s95.tflite
```

То же самое с 0.3