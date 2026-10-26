> **Name:** Hasnain khan | **Roll No:** 23102A0075 | **Branch:** CMPN A | **Experiment 4**

# Image Classification using R and Keras (Google Colab)

## Project Title
**Binary Image Classification with a Deep Neural Network in R — Cars vs. Planes**

## Objective
To build and evaluate a deep learning image classifier in R that distinguishes between two categories of images — **cars** and **planes** — covering the complete pipeline: image loading, preprocessing, model building, training, and evaluation.

## Problem Description
The project reads 12 labeled images (6 cars, 6 planes), preprocesses them (resize, flatten to feature vectors), splits them into training and test sets, and trains a fully connected neural network to classify each image as either a car or a plane. This demonstrates a complete, small-scale, end-to-end image classification pipeline in R.

> **Note on environment:** The initial implementation was written for RStudio using the `EBImage` and `keras` packages, but `EBImage` (a Bioconductor package) failed to install/load reliably on the local RStudio setup. The project was re-implemented and successfully executed in **Google Colab**, replacing `EBImage` with the lightweight `jpeg` package and a custom base-R resize function, and using `keras3` instead of `keras`. The working, tested code is in `Exp_4.R` / `R_prog4.ipynb`.

## Dataset
12 images total, split into two classes of 6 images each:

| Class | Label | Images |
|---|---|---|
| **Cars** | 0 | `c1.jpg` – `c6.jpg` (Ferrari SF90, Bentley Flying Spur, Kia Seltos, Toyota RAV4 ×2, Mercedes GLC) |
| **Planes** | 1 | `p1.jpg` – `p6.jpg` (Elysian E9X concept, cargo/military jet, British Airways 787, Qantas A380, Boeing 777X, generic widebody jet) |

Split used:
- **Training set (10 images):** `c2–c6` and `p2–p6`
- **Test set (2 images):** `c1` and `p1`

All images are resized to 28×28×3 and flattened to 2352-length feature vectors before being fed into the model.

Images are included in this repo under `images/`.

## R Packages / Libraries Used
| Package | Purpose |
|---|---|
| `jpeg` | Reading `.jpg` images (`readJPEG`) |
| `keras3` | Building, compiling, training, and evaluating the neural network |


## Major Operations Performed
1. **Image Loading** – Reads 12 `.jpg` images (cars and planes) using `readJPEG()`.
2. **Exploratory Analysis** – Inspects image data with `print()`, `summary()`, `hist()`, `str()`, and visualizes a sample image with `plot(as.raster(...))`.
3. **Preprocessing** – Custom `resize_image()` function (nearest-neighbor resampling) resizes all images to 28×28; each image is then flattened to a 2352-length numeric vector.
4. **Train/Test Split** – Combines vectors into `trainx`/`testx` matrices with corresponding `trainy`/`testy` labels (0 = car, 1 = plane).
5. **One-Hot Encoding** – Labels converted to categorical format using base R (`cbind` of logical comparisons), avoiding `to_categorical()`.
6. **Model Building** – A sequential neural network:
   - Dense layer (256 units, ReLU)
   - Dense layer (128 units, ReLU)
   - Output layer (2 units, softmax)
   - Total parameters: 635,522
7. **Compilation** – `categorical_crossentropy` loss, Adam optimizer, accuracy metric.
8. **Training** – 30 epochs, batch size 2, 20% validation split.
9. **Evaluation & Prediction** – Model evaluated on the held-out test set (1 car, 1 plane); predictions converted from probabilities to class labels; confusion matrix generated.

## Instructions to Execute the Project
1. Clone this repository:
   ```bash
   git clone <your-repo-url>
   cd <repo-folder>
   ```
2. Open `R_prog4.ipynb` in Google Colab (recommended — this is the tested, working version), or run `Exp_4.R` in an R environment with internet access for package installation.
3. Upload the images from `images/` to the Colab session (or update the `setwd()` path to point to the local `images/` folder).
4. Run all cells / source the script. On first run, `install.packages(c("jpeg", "keras3"))` will install dependencies; `keras3` additionally requires a Keras/TensorFlow backend (`keras3::install_keras()` if not already configured in Colab).
5. Review the printed model summary, training progress, evaluation metrics, and confusion matrix in the output.

## Important Results / Output
**Model architecture:**
```
Layer (type)        Output Shape       Param #
dense (Dense)        (None, 256)       602,368
dense_1 (Dense)       (None, 128)       32,896
dense_2 (Dense)       (None, 2)             258
Total params: 635,522 (2.42 MB)
```

**Test set evaluation:**
| Metric | Value |
|---|---|
| Accuracy | 0.50 |
| Loss | 36.41 |

**Predictions on test set:**
| Sample | P(Car) | P(Plane) | Predicted | Actual |
|---|---|---|---|---|
| c1.jpg | 1.000 | 5.43e-28 | Car | Car |
| p1.jpg | 1.000 | 2.38e-32 | Car | Plane |

**Confusion Matrix:**
|            | Actual: Car | Actual: Plane |
|---|---|---|
| Predicted: Car | 1 | 1 |
| Predicted: Plane | 0 | 0 |

The model correctly classified the car test image but misclassified the plane test image as a car (50% test accuracy). Given the very small dataset (only 10 training images), this is expected — the model likely overfits to the training set and doesn't generalize well. This is worth calling out honestly in the report rather than hiding it: a larger, more balanced dataset would be needed for a reliable classifier.

## Folder Structure
```

├── EXP_4.ipynb            # Colab notebook with full output
├── images/                  # Dataset images
│   ├── c1.jpg ... c6.jpg    # Cars
│   └── p1.jpg ... p6.jpg    # Planes
└── README.md
```

## Notes / Known Limitations
- **Small dataset:** Only 12 images (10 train / 2 test) — results are illustrative of the pipeline, not a robust classifier. Test accuracy was 50%.
- **Hardcoded path:** `setwd("/content/sample_data/images")` is Colab-specific. For portability, use a relative path such as `setwd("./images")`.
- **Original RStudio version (`EBImage` + `keras`) did not run reliably locally** — hence the switch to `jpeg` + `keras3` in Colab, which is the version verified to work end-to-end.
