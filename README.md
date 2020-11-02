# About crypto-x
A simple script for including the price of crypto-currencies in your Gnu/Linux XFCE panel.

# Why I created this script
I created this script because I found it difficult (and oftentimes irritating) to find a script that integrates a simple bitcoin price monitor into the panel for the GNU/Linux XFCE desktop environment and the associated XCFE panel. There are a plentiful supply of bitcoin monitors for tiling window managers on Github but not many for gui desktop environments. This project attempts to remedy that.

# Dependencies Required
Crypto-x requires the following dependencies to function properly:
- Client URL (Curl) to query the currency data source (rate.sx) 

# Script Configuration
Since crypto-x is a simple bash script there isn't much configuration that can be done or is needed for that matter. However, for those users that choose to make changes to accommodate their particular use case, there are three easy modifications that can be made as outlined below.

## Modification #1 - Currency Type
One modification that is particularly easy to make is changing the curency you would like to track/monitor. By default bitcoin is used, however, this can be changed easily by changing the script variable ***"btc_val"*** to a currency of your choosing by replacing "BTC" with a currency denoted below (or other). The only caveat is the currency needs to be in the population of crypto tracked by the rate.sx project. Below are the most popular currency options available:

- Bitcoin (BTC)
- Bitcoin Cash (BCH)
- Bitcoin SV (BSV) - fork of BCH
- Ethereum (ETH)
- Tether (USDT)
- Ripple (XRP)
- Chainlink (LINK)
- Binance Coin (BNB)
- Litecoin (LTC)
- Polkadot (DOT)

## Modification #2 - Currency Amount
A second modification that can be made without too much trouble is changing the amount of currency you would like to track. This could be benefificial for example if you have a batch (>1) of one particular crypto currency you are tracking (e.g. 100 BTC's). By default, 1 BTC is used for ease of monitoring and consistency to price reporting in the media. To modify the currency amount, the user simply changes the "1" within the btc_val variable to an amount of their choosing. In the example below, I changed the amount from 1 to 25,000.

### Example

```
btc_val="$(curl -s "rate.sx/25000BTC")"
```

## Modification #3 - Decimal Formatting
The third modification that can be made is the format of the crypto currency amount. By default, the script displays the crypto to the nearest whole number (e.g. 13,900.51 is rounded to 13,901). If you would like to track the currency in a format that does not display to the nearest whole amount, you can change the "printf statement in the script. In the example below, I change the ETH price to display two decimal places.

### Example

```
eth_val="$(curl -s "rate.sx/1ETH")"
printf "%.2f\n" $eth_val
```

# Credits
Much credit to Igor Chubin (https://github.com/chubin) for the fantastic Rate.sx project (https://github.com/chubin/rate.sx). Rate.sx serves as the source of cryptocurrency pricing information for crypto-x.
