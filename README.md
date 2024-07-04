# MQL4 Lot Size
An MQL4 Expert Advisor (EA) for MetaTrader 4 to assist traders in determining the lot size for their orders based on their risk tolerance, account balance, entry price, and stop-loss. This EA also allows traders to place orders with the calculated lot size by adjusting an input parameter.

## Input parameters
1. **riskPCT**: How much of your account balance do you want to risk on this order? The default is 5.0%.
1. **entry**: The entry price of your order.
1. **stopLoss**: The stop-loss of your order.
1. **takeOrder**: If the value is 0, it will only print the lot size on the chart. If the value is 1, it will print the lot size on the chart and try to take a buy/sell stop order or buy/sell order, depending on market conditions.

## Usage
I assume you know how to get EAs into your MetaTrader 4 and allow automated/algorithmic trading, so I'll skip this.

Drag this EA onto the chart you're interested in: EURUSD, GBPUSD, etc.

Fill in the input parameters and get your results.
