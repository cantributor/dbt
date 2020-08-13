SELECT 
 o.transaction_hash, o.block_timestamp, o.addresses , o.value / 100000000 as btc
FROM
  `bigquery-public-data.crypto_bitcoin.outputs` o
WHERE TRUE
  AND block_timestamp >= TIMESTAMP_SUB(TIMESTAMP(CURRENT_DATETIME()), INTERVAL 1 HOUR) 
ORDER BY block_timestamp
  