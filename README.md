# paymentlcmule
Payment LCM POC built on Anypoint Platform

Beware!! This wasn't meant for production use !!!

## Prerequisites

1. OpenJDK 11
2. Maven
3. Anypoint Studio. Grab it from [here](https://www.mulesoft.com/lp/dl/studio)
4. Docker

## Running the Project

1. Clone this project
2. Running the database and Payment dummy services by executing docker-compose file.
```
cd <project directory>
docker-compose up
```
3. Open the project using Anypoint Studio
4. Run Mule runtime from within Anypoint Studio
   
## Test the Endpoint

```
curl -X POST -H 'Content-Type: application/json' -d '{"merchant_id": <merchant_id>, "customer_id": <customer_id>, "payment_amount": <amount>, "currency_code": <currency_code>}' http://localhost:9000/payments
```

1. You can get the `merchant_id` from the database. E.g.: 8282c796-19c7-11ec-83c1-0242ac110003
2. For `customer_id` you can enter one of these following :
   - 001
   - 002
   - 003
   - 004
3. And you can use any arbitrary value for the remaining.

E.g. : 
```
curl -X POST -H 'Content-Type: application/json' -d '{"merchant_id": "8282c796-19c7-11ec-83c1-0242ac110003", "customer_id": "001", "payment_amount": 5000, "currency_code": "USD"}' http://localhost:9000/payments
```

You'll end up with getting one of these following responses:

```
{
  "id": "3szDVisyrR1byovXHziT5Ejsac8PMX46M",
  "transaction_id": "400a317e-1e87-4e17-a999-6a0638d38d8e",
  "transaction_code": "3h4AwAre1hts6n3oZMN4aHwSAmNY1",
  "transaction_type": "deposit",
  "payment_provider": "Lulupay",
  "customer_id": "001",
  "customer_name": "Yauri",
  "payment_amount": "5000",
  "currency_code": "001",
  "status": "success",
  "created_at": "Sun Oct 03 11:45:48 WIT 2021"
}
```

OR

```
{
  "statusCode": "400",
  "message": "Cannot proceed payment for Customer Rodtang",
  "reason": "Inactive Customer"
}
```

OR

```
{
  "statusCode": "400",
  "message": "Cannot proceed payment for Customer David",
  "reason": "Insufficient Balance"
}
```
