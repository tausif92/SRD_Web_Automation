*** Settings ***
Resource            Init.robot

*** Test Cases ***

SRD_Web_01: Home Page
    [Tags]   SRD_Web_01
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Home Page Contents

SRD_Web_02: About Us Page
    [Tags]   SRD_Web_02
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate About Us Page Contents

SRD_Web_03: Services - Full Truck Load
    [Tags]   SRD_Web_03
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Full Truck Load Page Contents

SRD_Web_04: Services - Part Load Transportation
    [Tags]   SRD_Web_04
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Part Load Transportation Page Contents

SRD_Web_05: Services - ODC Cargo
    [Tags]   SRD_Web_05
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate ODC Cargo Page Contents

SRD_Web_06: Services - Warehousing
    [Tags]   SRD_Web_06
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Warehousing Page Contents

SRD_Web_07: Services - Distribution
    [Tags]   SRD_Web_07
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Distribution Page Contents

SRD_Web_08: Network - Booking Centre - Delhi
    [Tags]   SRD_Web_08
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Delhi

SRD_Web_09: Network - Booking Centre - Gujarat
    [Tags]   SRD_Web_09
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Gujarat

SRD_Web_10: Network - Booking Centre - Haryana
    [Tags]   SRD_Web_10
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Haryana

#Maharashtra - WADI location is pending (there are 2 WADI locations in Nagpur)
SRD_Web_11: Network - Booking Centre - Maharastra
    [Tags]   SRD_Web_11
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Maharastra

SRD_Web_12: Network - Booking Centre - Mumbai
    [Tags]   SRD_Web_12
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Mumbai

#Punjab - Ludhiana location is pending (there are 3 Ludhiana locations in Ludhiana)
SRD_Web_13: Network - Booking Centre - Punjab
    [Tags]   SRD_Web_13
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Punjab

SRD_Web_14: Network - Booking Centre - Rajasthan
    [Tags]   SRD_Web_14
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Rajasthan

SRD_Web_15: Network - Booking Centre - Uttar Pradesh
    [Tags]   SRD_Web_15
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Uttar Pradesh

SRD_Web_16: Network - Delivery Centre - Karnataka
    [Tags]   SRD_Web_16
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Karnataka

SRD_Web_17: Network - Delivery Centre - Kerala
    [Tags]   SRD_Web_17
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Kerala

SRD_Web_18: Network - Delivery Centre - Tamilnadu
    [Tags]   SRD_Web_18
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Tamilnadu

SRD_Web_19: Join Us - Be a Franchisee
    [Tags]   SRD_Web_19
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Franchisee Page Form

SRD_Web_20: Join Us - Work at SRD
    [Tags]   SRD_Web_20
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Work At SRD Page Form

SRD_Web_21: Track Consignment
    [Tags]   SRD_Web_21
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Consignment Tracking

SRD_Web_22: Feedback - Write a Testimonial
    [Tags]   SRD_Web_22
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features


