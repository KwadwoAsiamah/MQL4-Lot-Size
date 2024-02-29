//+------------------------------------------------------------------+
//|                                                MQL4-Lot-Size.mq4 |
//|                                                   Kwadwo Asiamah |
//|                   https://github.com/KwadwoAsiamah/MQL4-Lot-Size |
//+------------------------------------------------------------------+
#property copyright "Kwadwo Asiamah"
#property link      "https://github.com/KwadwoAsiamah/MQL4-Lot-Size"
#property version   "1.00"
#property strict

//--- input parameters
input double   riskPCT = 5.0;     // Risk percent; default is 5.0%
input double   entry = 0.0;       // Entry price
input double   stopLoss = 0.0;    // Stop loss
input int      takeOrder = 0;     // 0 to NOT take order, 1 to take order

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit(){
    return(INIT_SUCCEEDED);
}

//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason){

}

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick(){

}
