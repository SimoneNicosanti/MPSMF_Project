from datetime import datetime
import time
import pandas as pd
import os

from statsmodels.tsa.stattools import adfuller, kpss

def create_download_url(
    ticker,
    period1,
    period2,
    interval='monthly'
):
    """
    Date format for period 1 and 2= 'yyyy-mm-dd'
    The interval: {daily; weekly, monthly}
    """
    def convert_to_seconds(period):
        datetime_value = datetime.strptime(period, '%Y-%m-%d')
        total_seconds = int(time.mktime(datetime_value.timetuple())) + 86400
        return total_seconds
    try:
        interval_reference = {'daily': '1d', 'weekly': '1wk', 'monthly': '1mo'}
        _interval = interval_reference.get(interval)
        if _interval is None:
            print('interval code is incorrect')
            return
        p1 = convert_to_seconds(period1)
        p2 = convert_to_seconds(period2)
        url = f'https://query1.finance.yahoo.com/v7/finance/download/{ticker}?period1={p1}&period2={p2}&interval={_interval}&filter=history'
        return url
    except Exception as e:
        print (e)
        return

def extractData(currency : str, startDate : str, endDate : str, interval : str) :
    #grab dataset
    query_url = create_download_url(currency, startDate, endDate, interval)
    df = pd.read_csv(query_url)
    df.set_index('Date', inplace=True)
        
    #Export as csv
    outputFileName : str = currency + "_Data.csv"
    outputFilePath = os.path.join("./", "data", outputFileName) ;
    df.to_csv(outputFilePath)
