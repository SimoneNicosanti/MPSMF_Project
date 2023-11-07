The Augmented Dickey-Fuller (ADF) test and the Kwiatkowski-Phillips-Schmidt-Shin (KPSS) test are commonly used statistical tests to determine whether a time series exhibits a random walk component or is stationary. These tests can help you assess the presence of unit roots in the data, which is a characteristic of non-stationarity often associated with random walks.

1. **ADF Test (Augmented Dickey-Fuller Test):**

   The ADF test is used to check for the presence of a unit root in a time series. A unit root implies that the time series is non-stationary and may exhibit a random walk component. The null hypothesis of the ADF test is that the time series has a unit root (it's non-stationary), while the alternative hypothesis is that it does not have a unit root (it's stationary).

   In Python, you can perform the ADF test using the `adfuller` function from the `statsmodels` library:

   ```python
   from statsmodels.tsa.stattools import adfuller

   result = adfuller(your_time_series)
   ```

   Check the p-value in the result. If the p-value is less than your chosen significance level (e.g., 0.05), you can reject the null hypothesis and conclude that the series is stationary. Otherwise, if the p-value is greater than the significance level, you may fail to reject the null hypothesis, indicating non-stationarity.

2. **KPSS Test (Kwiatkowski-Phillips-Schmidt-Shin Test):**

   The KPSS test is used to test for stationarity in a time series. The null hypothesis of the KPSS test is that the time series is stationary (it does not have a unit root), while the alternative hypothesis is that it has a unit root (non-stationary).

   In Python, you can perform the KPSS test using the `kpss` function from the `statsmodels` library:

   ```python
   from statsmodels.tsa.stattools import kpss

   result = kpss(your_time_series)
   ```

   In this case, you want to check whether the p-value is greater than your chosen significance level to conclude that the series is stationary. If the p-value is less than the significance level, it suggests non-stationarity.

In summary, you can use both the ADF test and the KPSS test to assess the stationarity of a time series. If the ADF test rejects the null hypothesis (low p-value), it suggests non-stationarity with a unit root (random walk component). If the KPSS test rejects the null hypothesis (low p-value), it suggests non-stationarity without a unit root. These tests can be used in combination to get a better understanding of the time series behavior.