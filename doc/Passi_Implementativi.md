# Passi Implementativi

# 0. Analisi del mercato
Analisi sull'ingresso e uscita dal mercato con eventuale parallelismo con il mercato normale.
Capire se si tratta di un mercato liquido o meno

# 1. Download dei Dati
Provare a farlo da:
* Binance
* Kaggle
Trovate REST API anche su Yahoo Finance --> Più comode perché facile specificare l'intervallo temporale

# 2. Analisi delle serie storiche
1. Passare al logaritmo della serie storica per ridurne la dinamicità
2. Cercare componente di Random Walk nella serie con test ADF e KPSS
3. Differencing della serie storica: calcolo di *Y(t+1) - Y(t)*, otteniamo *Y(t+1) - Y(t) = W(t)*
4. Vedere se W(t) ha caratteristiche di rumore bianco: fare test di Stazionarietà, Eteroschedasticità, Autocorrelazione, Normalità. Fare l'autocorrelazione facendo anche gli autocorrelogrammi
