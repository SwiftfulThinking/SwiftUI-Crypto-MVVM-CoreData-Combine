//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Nick Sarno on 5/9/21.
//

import Foundation

// JSON data:
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 7115,
     "upcoming_icos": 0,
     "ongoing_icos": 50,
     "ended_icos": 3375,
     "markets": 610,
     "total_market_cap": {
       "btc": 43945962.151456155,
       "eth": 652788081.2710718,
       "ltc": 6495993714.950187,
       "bch": 1770500224.7357078,
       "bnb": 3833884097.663599,
       "eos": 247247070735.08984,
       "xrp": 1619455349425.8096,
       "xlm": 3945341334062.76,
       "link": 49340474373.95965,
       "dot": 63217351358.98804,
       "yfi": 47614348.47435475,
       "usd": 2576156760966.8447,
       "aed": 9462267577696.14,
       "ars": 239857289822279.16,
       "aud": 3281111753978.381,
       "bdt": 216671438450771.66,
       "bhd": 965345189939.7814,
       "bmd": 2576156760966.8447,
       "brl": 13483604486900.465,
       "cad": 3123288662331.268,
       "chf": 2321787042388.979,
       "clp": 1791459411576345.5,
       "cny": 16571128364919.248,
       "czk": 54291924102105.24,
       "dkk": 15752085693591.512,
       "eur": 2118340214505.1472,
       "gbp": 1835854321038.0864,
       "hkd": 20006265955479.08,
       "huf": 758913005978911.2,
       "idr": 36800399330411416,
       "ils": 8381500260238.005,
       "inr": 188806137435432.44,
       "jpy": 280245281124207.72,
       "krw": 2870247630092909.5,
       "kwd": 773187080982.5017,
       "lkr": 503678793595982,
       "mmk": 3982124286848415.5,
       "mxn": 51309628499301.6,
       "myr": 10563530798344.572,
       "ngn": 980227647547886.1,
       "nok": 21158264007377.945,
       "nzd": 3537843808306.051,
       "php": 122458575115187.55,
       "pkr": 389507792065526.8,
       "pln": 9643098325375.455,
       "rub": 189773103027975.03,
       "sar": 9661618316330.066,
       "sek": 21408555669803.176,
       "sgd": 3415932341906.8203,
       "thb": 80092713698459.11,
       "try": 21252468907812.98,
       "twd": 71671254670701.73,
       "uah": 70965805055592.31,
       "vef": 257950576475.61035,
       "vnd": 58983270708354776,
       "zar": 36227603755394.23,
       "xdr": 1788816274739.5918,
       "xag": 93581444737.3142,
       "xau": 1406942253.434433,
       "bits": 43945962151456.16,
       "sats": 4394596215145615.5
     },
     "total_volume": {
       "btc": 5838405.376372819,
       "eth": 86725634.31857495,
       "ltc": 863020008.5172676,
       "bch": 235218380.1401587,
       "bnb": 509347581.26458997,
       "eos": 32847810274.290417,
       "xrp": 215151434989.5756,
       "xlm": 524155142559.66003,
       "link": 6555088949.12581,
       "dot": 8398690254.688973,
       "yfi": 6325765.884180338,
       "usd": 342253229813.7348,
       "aed": 1257101931410.7524,
       "ars": 31866046888091.77,
       "aud": 435909457139.3444,
       "bdt": 28785709294465.887,
       "bhd": 128250157035.49245,
       "bmd": 342253229813.7348,
       "brl": 1791353404845.0876,
       "cad": 414941997521.26544,
       "chf": 308459145901.9267,
       "clp": 238002896012471.38,
       "cny": 2201543900776.8516,
       "czk": 7212909811347.779,
       "dkk": 2092730646915.7078,
       "eur": 281430381583.8469,
       "gbp": 243900945921.85138,
       "hkd": 2657916336273.53,
       "huf": 100824775642321.81,
       "idr": 4889087387889206,
       "ils": 1113517460666.686,
       "inr": 25083687190557.695,
       "jpy": 37231760915364.805,
       "krw": 381324435162025.9,
       "kwd": 102721146370.45593,
       "lkr": 66915840102918.69,
       "mmk": 529041912100909.56,
       "mxn": 6816699333094.208,
       "myr": 1403409368851.223,
       "ngn": 130227353944126.3,
       "nok": 2810964108821.9453,
       "nzd": 470017387262.8914,
       "php": 16269135281903.83,
       "pkr": 51747743728922.43,
       "pln": 1281126054624.2988,
       "rub": 25212152624874.766,
       "sar": 1283586513093.4324,
       "sek": 2844216405870.955,
       "sgd": 453820937668.4165,
       "thb": 10640652914909,
       "try": 2823479624929.774,
       "twd": 9521826764394.674,
       "uah": 9428104824448.967,
       "vef": 34269815901.249283,
       "vnd": 7836174882981855,
       "zar": 4812989093506.27,
       "xdr": 237651744198.68225,
       "xag": 12432687403.681458,
       "xau": 186918178.93047315,
       "bits": 5838405376372.818,
       "sats": 583840537637281.9
     },
     "market_cap_percentage": {
       "btc": 42.56418169927073,
       "eth": 17.740741095283088,
       "bnb": 4.052168800333709,
       "doge": 2.8545041970901375,
       "xrp": 2.842355332610502,
       "ada": 2.1755519069071543,
       "usdt": 2.1874449062542713,
       "dot": 1.567784704381096,
       "bch": 1.0640429470554749,
       "ltc": 1.028552621884064
     },
     "market_cap_change_percentage_24h_usd": 0.5446264306552537,
     "updated_at": 1620607846
   }
 }
 
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}

