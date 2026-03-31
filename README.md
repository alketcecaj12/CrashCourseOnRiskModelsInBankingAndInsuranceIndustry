# 🏦 Credit & Risk Models in Banking — A Practical Crash Course

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.9+-3776AB?style=for-the-badge&logo=python&logoColor=white"/>
  <img src="https://img.shields.io/badge/Framework-IFRS%209-003366?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Framework-Basel%20IRB-8B0000?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Models-PD%20%7C%20LGD%20%7C%20EAD-2E8B57?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Jupyter-Notebook-F37626?style=for-the-badge&logo=jupyter&logoColor=white"/>
</p>

<p align="center">
  <em>A hands-on course covering the quantitative risk models that sit at the heart of banking regulation — from probability of default to model validation, value at risk, and beyond. Built for practitioners who want to understand the math and implement it.</em>
</p>

<p align="center">
  <img src="assets/takingrisks.png" width="600"/>
</p>

---

## 🗂️ Repository Structure

```
CrashCourseOnRiskModelsInBankingAndInsuranceIndustry/
│
├── 01_foundations/                     # Core concepts and data preparation
├── 02_credit_risk_models/              # PD, LGD, and EAD model implementations
│   ├── pd/                             # Probability of Default
│   ├── lgd/                            # Loss Given Default
│   └── ead/                            # Exposure at Default
├── 03_model_validation/                # PSI, CSI, Q&A — monitoring and stability
├── 04_broader_risk_topics/             # VAR, project risk, insurance applications
├── data/                               # Credit datasets (German credit, synthetic)
├── assets/                             # Images and static outputs
├── requirements.txt
└── README.md
```

---

## 🎓 01 — Foundations

Start here. These notebooks build the conceptual and mathematical scaffolding before tackling the models.

| File | Description |
|---|---|
| `01_risk_models_crash_course_101.ipynb` | Overview of the risk model landscape in banking and insurance — PD, LGD, EAD, VaR, and where they fit in regulation |
| `02_credit_risk_modeling_preparation.ipynb` | Data preparation for credit risk: feature engineering, missing values, variable treatment, train/test split |
| `03_representative_analysis.ipynb` | Checking whether development samples are representative of the through-the-cycle population |

---

## 🔬 02 — Credit Risk Models

The three pillars of credit risk under **IFRS 9** and **Basel IRB**: Probability of Default, Loss Given Default, and Exposure at Default.

### 📉 PD — Probability of Default
`02_credit_risk_models/pd/`

| File | Description |
|---|---|
| `pd_model.ipynb` | Logistic regression-based PD model: scorecard development, calibration, Gini coefficient, KS statistic |
| `ordinal_regression_pd.ipynb` | Ordinal regression approach to PD — modelling rating grade transitions as ordered outcomes |

**Key concepts covered:** Weight of Evidence (WoE), Information Value (IV), logistic regression, ROC/AUC, Gini, KS statistic, rating calibration.

### 📊 LGD — Loss Given Default
`02_credit_risk_models/lgd/`

| File | Description |
|---|---|
| `beta_regression_lgd.ipynb` | Beta regression model for LGD — appropriate for a response variable bounded in (0, 1) |
| `realized_loss_estimation.ipynb` | Estimating realised losses from workout data; discounting cash flows to compute economic LGD |

**Key concepts covered:** Beta distribution, zero-one inflated models, workout LGD, discount rates, cure rates.

### 📈 EAD — Exposure at Default
`02_credit_risk_models/ead/`

| File | Description |
|---|---|
| `beta_regression_ead.ipynb` | Beta regression applied to EAD modelling via Credit Conversion Factor (CCF) |
| `ccf_credit_conversion_factor.ipynb` | Credit Conversion Factor deep dive — off-balance sheet exposure, regulatory vs. internal CCF |
| `next_model_ead.ipynb` | Alternative EAD modelling approaches beyond beta regression |

**Key concepts covered:** CCF, LEQ (Loan Equivalent Exposure), off-balance sheet items, EAD under Basel IRB.

---

## ✅ 03 — Model Validation & Monitoring

Building a model is only half the job. These notebooks cover the quantitative tools used to validate, monitor, and challenge credit risk models over time.

| File | Description |
|---|---|
| `psi_population_stability_index.ipynb` | PSI — detecting distributional shift between development and current population; thresholds (0.1 / 0.2 / 0.25) |
| `csi_characteristic_stability_index.ipynb` | CSI — variable-level stability monitoring; identifying which features are driving population drift |
| `qa_risk_models.ipynb` | Q&A notebook — conceptual questions and answers covering key risk model topics for review or interview prep |

**Key concepts covered:** Population Stability Index, Characteristic Stability Index, model monitoring, distributional shift, backtesting, benchmarking.

---

## 🌐 04 — Broader Risk Topics

Risk modelling beyond the standard credit risk PD/LGD/EAD framework.

| File | Description |
|---|---|
| `value_at_risk.ipynb` | Value at Risk (VaR) — historical simulation, parametric VaR, Expected Shortfall (CVaR) |
| `risk_evaluation_construction_project.ipynb` | Applying risk quantification methods to project finance / construction risk — Monte Carlo simulation, sensitivity analysis |

---

## 📁 Data

All datasets are bundled in `data/` — no external downloads needed.

| File | Description |
|---|---|
| `credit_data.csv` | Synthetic credit portfolio dataset — used in PD and LGD notebooks |
| `german_credit_data.csv` | Statlog German Credit dataset (CSV format) — classic benchmark for credit scoring |
| `german.data` | Statlog German Credit dataset (original UCI format) |
| `german.data-numeric` | Numeric-only version of the German Credit dataset |

The **Statlog German Credit dataset** (1,000 observations, 20 features) is a standard benchmark from the UCI Machine Learning Repository, widely used in credit scoring literature.

---

## 🛠️ Getting Started

```bash
git clone https://github.com/alketcecaj12/CrashCourseOnRiskModelsInBankingAndInsuranceIndustry.git
cd CrashCourseOnRiskModelsInBankingAndInsuranceIndustry
pip install -r requirements.txt
jupyter notebook
```

**Recommended reading order:**
1. `01_foundations/` — understand the landscape and prepare the data
2. `02_credit_risk_models/pd/` → `lgd/` → `ead/` — build the three core models
3. `03_model_validation/` — validate and monitor what you built
4. `04_broader_risk_topics/` — extend to market risk and project risk

---

## 🧰 Tech Stack

| Library | Role |
|---|---|
| scikit-learn | Logistic regression, model evaluation metrics |
| statsmodels | Beta regression, ordinal regression, statistical tests |
| pandas / numpy | Data wrangling and numerical computation |
| matplotlib / seaborn | Visualisation of distributions, ROC curves, stability plots |
| scipy | Statistical distributions, simulation |

---

## 📚 Regulatory Context

The models in this repository are grounded in two major regulatory frameworks:

**IFRS 9 (International Financial Reporting Standard 9)**
Requires banks to estimate Expected Credit Loss (ECL) using forward-looking PD, LGD, and EAD estimates across three stages of credit deterioration.

**Basel III / IRB Approach (Internal Ratings-Based)**
Allows banks using the Advanced IRB approach to use their own internally estimated PD, LGD, and EAD to compute regulatory capital requirements, subject to strict supervisory validation standards.

---

## 📖 References

- Basel Committee on Banking Supervision. (2017). [Basel III: Finalising post-crisis reforms](https://www.bis.org/bcbs/publ/d424.htm). BIS.
- IASB. (2014). [IFRS 9 Financial Instruments](https://www.ifrs.org/issued-standards/list-of-standards/ifrs-9-financial-instruments/). IFRS Foundation.
- Siddiqi, N. (2006). *Credit Risk Scorecards*. Wiley.
- Thomas, L.C., Edelman, D.B., & Crook, J.N. (2002). *Credit Scoring and Its Applications*. SIAM.
- UCI Machine Learning Repository. [Statlog (German Credit Data)](https://archive.ics.uci.edu/ml/datasets/statlog+(german+credit+data)).

---

## 👤 Author

**Alket Cecaj** — Quantitative Risk Analyst & Data Scientist
PhD in Industrial Innovation Engineering
Credit risk modelling under IFRS 9 and Basel IRB frameworks
[GitHub](https://github.com/alketcecaj12)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
