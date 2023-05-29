All preprocessed data files for training can be downloaded in [data for training](https://drive.google.com/drive/folders/1YvN_Vjssq85-InJCFMx_Nzu6uwYXdkYh?usp=sharing)

* `model_hyperparameters_tuning` used for log tuning results of each model to *Weight and Biases*
 1. Time series model
The baseline time-series model will be trained in 
`SARIMAX`that trained the time-series model based on the input `processed_all_sites_HS1e_0_df_not_imputed_R_channel.csv` or `processed_all_sites_HS1e_4_df_not_imputed_R_channel.csv`
2. ML models that used estimated cloud index
for ML models (Linear regression, SVR, RF, LightGBM, ANN) use `model_training_ML` and `model_training_ANN` with the same data file of time series model.
3. CNN models
use data file `df_cnn_r.csv` with cut and stacked cloud image in   `cut_im_for_CNN.tar.gz`that can extract to your local or colab VM to train 3D-CNN and CNN-LSTM models.

 
