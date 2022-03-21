{-# LANGUAGE OverloadedStrings #-}

module Utility
    ( walletPubKeyHash
    , wallet
    , companyPkh
    , companyPkhReal
    , mp
    , mpReal
    , mpMainnet ) where

import           Plutus.V1.Ledger.Crypto (PubKeyHash)
import           Wallet.Emulator.Wallet (Wallet, knownWallet, walletPubKeyHash)

import           Prelude hiding ((.))

import Market.Types  (MarketParams(..))

wallet :: Integer -> Wallet
wallet = knownWallet

companyPkh :: PubKeyHash
companyPkh = walletPubKeyHash $ wallet 1


mp :: MarketParams
mp = MarketParams companyPkh



companyPkhReal :: PubKeyHash
companyPkhReal = "f1a4b726c4edb594dde3f3e230a4e9890c35fab7f1bcd66c917076a9"


mpReal :: MarketParams
mpReal = MarketParams companyPkhReal




companyPkhMainnet :: PubKeyHash
companyPkhMainnet = "f1a4b726c4edb594dde3f3e230a4e9890c35fab7f1bcd66c917076a9"


mpMainnet :: MarketParams
mpMainnet = MarketParams companyPkhMainnet