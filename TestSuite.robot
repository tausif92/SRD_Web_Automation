*** Settings ***
Library             Selenium2Library
Library             String
Resource            TestData.robot
Resource            Keywords.robot
Resource            Locators.robot
Resource            PageContents/HomePageContents.robot
Resource            PageContents/CommonContents.robot
Resource            PageContents/AboutUsPageContents.robot
Resource            PageContents/Services/FTLPageContents.robot
Resource            PageContents/Services/PLTPageContents.robot
Resource            PageContents/Services/ODCCargoPageContents.robot
Resource            PageContents/Services/WarehousingPageContents.robot
Resource            PageContents/Services/DistributionPageContents.robot
Resource            PageContents/Network/Network.robot
Resource            PageContents/Network/Delhi/NANGLI POONA.robot
Resource            PageContents/Network/Delhi/BUDHPUR.robot
Resource            PageContents/Network/Delhi/BABARPUR.robot
Resource            PageContents/Network/Delhi/BAWANA.robot
Resource            PageContents/Network/Delhi/DAYA BASTI.robot
Resource            PageContents/Network/Delhi/HAMILTON ROAD.robot
Resource            PageContents/Network/Delhi/JAMUNA BAZAAR.robot
Resource            PageContents/Network/Delhi/KAILASH NAGAR.robot
Resource            PageContents/Network/Delhi/KAMLA MARKET.robot
Resource            PageContents/Network/Delhi/KAROL BAGH.robot
Resource            PageContents/Network/Delhi/KASHMERE GATE.robot
Resource            PageContents/Network/Delhi/MANGOL PURI.robot
Resource            PageContents/Network/Delhi/MAYAPURI.robot
Resource            PageContents/Network/Delhi/MUNDKA.robot
Resource            PageContents/Network/Delhi/NARAINA.robot
Resource            PageContents/Network/Delhi/NARELA.robot
Resource            PageContents/Network/Delhi/New Lajpat Rai Market.robot
Resource            PageContents/Network/Delhi/SADAR BAZAAR.robot
Resource            PageContents/Network/Delhi/SAMAIPUR BADLI.robot
Resource            PageContents/Network/Delhi/SHAHADARA.robot
Resource            PageContents/Network/Delhi/WAZIRPUR.robot
Resource            PageContents/Network/Gujarat/Ahmedabad.robot
Resource            PageContents/Network/Gujarat/Bhavnagar.robot
Resource            PageContents/Network/Gujarat/Jamnagar.robot
Resource            PageContents/Network/Gujarat/Rajkot.robot
Resource            PageContents/Network/Gujarat/Daman.robot
Resource            PageContents/Network/Gujarat/Vapi.robot
Resource            PageContents/Network/Gujarat/CHATRAL.robot
Resource            PageContents/Network/Haryana/FARIDABAD.robot
Resource            PageContents/Network/Haryana/GURGAON.robot
Resource            PageContents/Network/Haryana/KARNAL.robot
Resource            PageContents/Network/Haryana/PANIPAT.robot
Resource            PageContents/Network/Haryana/Jagadhri.robot
Resource            PageContents/Network/Maharastra/Nagpur.robot
Resource            PageContents/Network/Mumbai/Bhiwandi.robot
Resource            PageContents/Network/Mumbai/DONGRI.robot
Resource            PageContents/Network/Mumbai/OPERA HOUSE.robot
Resource            PageContents/Network/Mumbai/SAKINAKA.robot
Resource            PageContents/Network/Mumbai/VASAI (E ).robot
Resource            PageContents/Network/Mumbai/Vashi.robot

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

SRD_Web_11: Network - Booking Centre - Maharastra
    [Tags]   SRD_Web_11
    Open Browser    ${URL}      ${BROWSER}
    Maximize Browser Window
    Validate Common Features
    Validate Locations    Maharastra





