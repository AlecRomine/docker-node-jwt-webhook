#!/bin/bash

echo "TEST 1"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "johndoe+16883@forhims.com" }'

echo "TEST 2"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "johndoe+dev-ed-98787687@forhims.com" }'

echo ""
echo "TEST 3"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "johndoe+fv200@forhims.com" }'

echo ""
echo "TEST 4"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "johndoe+cart@forhims.com" }'

echo ""
echo "TEST 5"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "johndoe+1591832593198@forhims.com" }'

echo ""
echo "TEST 6"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "johndoe+test_emailaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa@forhims.com" }'

echo ""
echo "TEST 7"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "johndoe+aaaa@forhims.com" }'

echo ""
echo "TEST 8"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "johndoe+dr@forhims.com" }'


echo ""
echo "TEST 9: no user"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "blahblahblah" }'


echo ""
echo "TEST 9: no email"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-acme-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "no-email": "wrongusertest@forhims.com" }'

echo ""
echo "TEST 10: no vendor"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "wrongusertest@forhims.com" }'

echo ""
echo "TEST 11"

curl -v --location --request POST 'http://localhost:8080/api/v1/webhook' --header 'x-NotARealVendor-token: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzM4NCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibm9uY2UiOiIwYTUzOTg5Zi0zZDk3LTQ2NDItOTE1My0wM2ZhYjFhM2UwODEiLCJleHAiOjE2MzM0NzQ3MTF9.qX6wdeC4tAaDrirn7VFBkxf52UAI0GeIvAx_uV_7FrHNze4O1uupTr5KMmO7WoqeFi8y_8Yk5SiPhMG6WNeKJLJfEtYMT-eBPLla9BjtjZUVOT_Vw82wEnmQuFUyKGm2' --header 'Content-Type: application/json'  --data-raw '{ "email": "johndoe+dr@forhims.com" }'

