#!/bin/bash
sqlite3 travel.db < ddl.sql
sqlite3 -separator , travel.db ".import country.csv country"
sqlite3 -separator , travel.db ".import city.csv city"
sqlite3 -separator , travel.db ".import attraction.csv attraction"
sqlite3 -separator , travel.db ".import category.csv category"
sqlite3 -separator , travel.db ".import customer.csv customer"