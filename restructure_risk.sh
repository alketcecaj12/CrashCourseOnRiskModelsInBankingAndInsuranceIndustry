#!/bin/bash

mkdir -p 01_foundations
mkdir -p 02_credit_risk_models/pd
mkdir -p 02_credit_risk_models/lgd
mkdir -p 02_credit_risk_models/ead
mkdir -p 03_model_validation
mkdir -p 04_broader_risk_topics
mkdir -p data
mkdir -p assets

git mv "RiskModelsCrashCourse101.ipynb"                     01_foundations/01_risk_models_crash_course_101.ipynb
git mv "Credit Risk Modeling - Preparation - 5-2.ipynb"     01_foundations/02_credit_risk_modeling_preparation.ipynb
git mv "RepresentativeAnalysis.ipynb"                       01_foundations/03_representative_analysis.ipynb

git mv "PDModel.ipynb"                                      02_credit_risk_models/pd/pd_model.ipynb
git mv "OrdinalRegression.ipynb"                            02_credit_risk_models/pd/ordinal_regression_pd.ipynb

git mv "BetaRegressionLGD.ipynb"                            02_credit_risk_models/lgd/beta_regression_lgd.ipynb
git mv "RealizedLossRiskEstimation.ipynb"                   02_credit_risk_models/lgd/realized_loss_estimation.ipynb

git mv "BetaRegressionEADModel.ipynb"                       02_credit_risk_models/ead/beta_regression_ead.ipynb
git mv "CCF.ipynb"                                          02_credit_risk_models/ead/ccf_credit_conversion_factor.ipynb
git mv "NextModel.ipynb"                                    02_credit_risk_models/ead/next_model_ead.ipynb

git mv "PSI.ipynb"                                          03_model_validation/psi_population_stability_index.ipynb
git mv "CSI.ipynb"                                          03_model_validation/csi_characteristic_stability_index.ipynb
git mv "Q&A_RiskModels.ipynb"                               03_model_validation/qa_risk_models.ipynb

git mv "VAR.ipynb"                                          04_broader_risk_topics/value_at_risk.ipynb
git mv "RiskEvaluationOfConstructionProject.ipynb"          04_broader_risk_topics/risk_evaluation_construction_project.ipynb

git mv "credit_data.csv"                                    data/credit_data.csv
git mv "german_credit_data.csv"                             data/german_credit_data.csv
git mv "german.data"                                        data/german.data
git mv "german.data-numeric"                                data/german.data-numeric

git mv "takingrisks.png"                                    assets/takingrisks.png

git rm "Q&A_RiskModels-Copy1.ipynb"

cat > .gitignore << 'EOF'
.DS_Store
__pycache__/
*.pyc
.ipynb_checkpoints/
EOF

cat > requirements.txt << 'EOF'
numpy
pandas
scipy
scikit-learn
statsmodels
matplotlib
seaborn
jupyter
EOF

git add .gitignore requirements.txt README.md
git commit -m "refactor: restructure into foundations / credit_risk_models / validation / broader_risk"
git push origin master
