*** Settings ***
Library     RequestsLibrary
Library     JSONLibrary
Library     Collections
Library     OperatingSystem
Library     FakerLibrary    locale=pt_PT
Library     yaml

*** Variables ***
### TIME AND LOG ###
${GENERAL_TIMEOUT}      30
${LOW_TIMEOUT}          10
${LONG_TIMEOUT}         60
${LOG_LEVEL}            DEBUG

#SENSITIVE DATA
${BASE_URL}             ${BASE_URL} 
${TOKEN}                ${TOKEN}