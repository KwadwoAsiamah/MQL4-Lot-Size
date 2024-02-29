//+------------------------------------------------------------------+
//|                                                MQL4-Lot-Size.mq4 |
//|                                                   Kwadwo Asiamah |
//|                   https://github.com/KwadwoAsiamah/MQL4-Lot-Size |
//+------------------------------------------------------------------+
#property copyright "Kwadwo Asiamah"
#property link      "https://github.com/KwadwoAsiamah/MQL4-Lot-Size"
#property version   "1.00"
#property strict

//--- Input parameters
input double   riskPCT = 5.0;    // Risk percent; default is 5.0%
input double   entry = 0.0;      // Entry price
input double   stopLoss = 0.0;   // Stop loss
input int      takeOrder = 0;    // 0 to NOT take order, 1 to take order
//---

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit(){
   //--- Validates input parameters
   if(riskPCT <= 0.0){ // Ensures risk percent is greater than 0.0%.
      Alert("Your risk percent has to be greater than 0.0");
      ExpertRemove();
   }

   if(entry == 0.0){ // Ensures entry price is not 0.0.
      Alert("Enter your entry price. It cannot be 0.0");
      ExpertRemove();
   }

   if(stopLoss == 0.0){ // Ensures stop loss is not 0.0. Also ensures a stop loss is always set.
      Alert("Enter your stop loss. It cannot be 0.0");
      ExpertRemove();
   }

   if(entry != 0.0 && stopLoss != 0.0){ // Ensures entry and stop loss values are not too close to each other if they're set.
      if(entry > stopLoss){ // Potential buy order
         if(entry - stopLoss < MarketInfo(_Symbol, MODE_STOPLEVEL) * Point){
            Alert(
               "Your stop loss is too close to your entry price.", "\n",
               "It should be ", NormalizeDouble(entry - MarketInfo(_Symbol, MODE_STOPLEVEL) * Point, Digits), " or lower."
            );
            ExpertRemove();
         }
      }
      else{ // Potential sell order
         if(stopLoss - entry < MarketInfo(_Symbol, MODE_STOPLEVEL) * Point){
            Alert(
               "Your stop loss is too close to your entry price.", "\n",
               "It should be ", NormalizeDouble(entry + MarketInfo(_Symbol, MODE_STOPLEVEL) * Point, Digits), " or higher."
               );
            ExpertRemove();
         }
      }
   }

   if(takeOrder != 0 && takeOrder != 1){ // Ensures take order value is either 0 or 1.
      Alert("Take order value has to be 0 or 1");
      ExpertRemove();
   }
   //---


   return(INIT_SUCCEEDED);
}
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason){}
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick(){

}
//+------------------------------------------------------------------+
