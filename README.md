# MQL4-Lot-Size
An MQL4/MT4 Expert Advisor to let you know the lot size you need to use based on your risk tolerance, your account balance, your entry price, and stop loss value.

It can also take the order for you should you choose to do so.

## Input parameters
1. **riskPCT**: How much of your account balance do you want to risk on this trade? The default is 5.0%.
1. **entry**: The entry price of your trade.
1. **stopLoss**: The stop loss of your trade.
1. **takeOrder**: If the value is 0, it will only print on the chart the lot size you need based on your risk. If the value is 1, it will print the lot size on the chart and try to take a buy/sell stop order or buy/sell order, depending on market conditions.

## Usage
I'm assuming you already know how to get Expert Advisors (EA) into your MT4, so I'll skip this.

Drag this EA onto the chart you're interested in, EURUSD, GBPUSD, etc.

Fill in the input parameters and get your results.
