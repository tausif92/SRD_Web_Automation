*** Keywords ***

Validate Contact Us Page
    Wait And Click      ${ContactUs_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${ContactUs_PageTitle}'=='${Title}'   Log To Console   PASSED :: "${Title}" page title is displayed correctly.   ELSE    Fail   FAILED :: Page title should be "${ContactUs_PageTitle}" but it was "${Title}".
    Validate Element    ${ContactUs_Header_Locator}   PASSED :: Header "Contact Us" is displayed.    FAILED :: Header "Contact Us" is not displayed.
    Validate Element    //h6[text()='${HeadOffice_Header_ContactUs}']    PASSED :: Header "${HeadOffice_Header_ContactUs}" is displayed in Contact Us page.    FAILED :: Header "${HeadOffice_Header_ContactUs}" is not displayed in Contact Us page.
    Validate Content   ${HeadOffice_Value_ContactUs}   PASSED :: Head Office address is displayed correctly in Contact Us page.   FAILED :: Head Office address "${HeadOffice_Value_ContactUs}" is not displayed correctly in Contact Us page.
    Validate Element   (//h6[text()='${Phone_Numbers_Header_ContactUs}'])[1]    PASSED :: Header "${Phone_Numbers_Header_ContactUs}" is displayed.    FAILED :: Header "${Phone_Numbers_Header_ContactUs}" is not displayed.
    Validate Content   ${Phone_Numbers_Value_ContactUs}   PASSED :: Phone number is displayed correctly in Contact Us page.   FAILED :: Phone number is not displayed correctly in Contact Us page.
    Validate Element    //h6[text()='${EmailAddress_Header_ContactUs}']    PASSED :: Header "${EmailAddress_Header_ContactUs}" is displayed in Contact Us page.    FAILED :: Header "${EmailAddress_Header_ContactUs}" is not displayed in Contact Us page.
    Validate Content    ${EmailAddress_Value_ContactUs}   PASSED :: Email is displayed correctly in Contact Us page.   FAILED :: Email "${EmailAddress_Value_ContactUs}" is not displayed in Contact Us page.
    Validate Element    //h6[text()='${City_Header_ContactUs}']    PASSED :: Header "${City_Header_ContactUs}" is displayed in Contact Us page.    FAILED :: Header "${City_Header_ContactUs}" is not displayed in Contact Us page.
    Validate Element    //p[text()='${City_Value_ContactUs}']      PASSED :: City "${City_Value_ContactUs}" is displayed correctly in Contact Us page.   FAILED :: City "${City_Value_ContactUs}" is not displayed in Contact Us page.

    Validate Element   //div[@class='vc_tta-tabs-container']//span[text()='Head Office :']    PASSED :: Head Office tab is displayed in Contact Us page.   FAILED :: Head Office tab not is displayed correctly in Contact Us page.
    Wait And Click     //div[@class='vc_tta-tabs-container']//span[text()='Head Office :']
    Sleep    1
    Validate Element   (//h4[text()='SRD Logistics Pvt Ltd.'])[1]    PASSED :: Company name "SRD Logistics Pvt Ltd" is displayed in Head Office tab in Contact Us page.    FAILED :: Company name "SRD Logistics Pvt Ltd" is not displayed in Head Office tab in Contact Us page.
    Validate Content   ${Address_HeadOffice}    PASSED :: Address is displayed in Head Office tab in Contact Us page.    FAILED :: Address "${Address_HeadOffice}" is not displayed in Head Office tab in Contact Us page.
    Validate Content   ${Phone1_HeadOffice}    PASSED :: Phone no. is displayed in Head Office tab in Contact Us page.    FAILED :: Phone no. "${Phone1_HeadOffice}" is not displayed in Head Office tab in Contact Us page.
    Validate Content   ${Phone2_HeadOffice}    PASSED :: Phone no. is displayed in Head Office tab in Contact Us page.    FAILED :: Phone no. "${Phone2_HeadOffice}" is not displayed in Head Office tab in Contact Us page.
    Validate Content   ${Email_HeadOffice}    PASSED :: Email is displayed in Head Office tab in Contact Us page.    FAILED :: Email "${Email_HeadOffice}" is not displayed in Head Office tab in Contact Us page.
    Validate Content   ${City_HeadOffice}    PASSED :: City is displayed in Head Office tab in Contact Us page.    FAILED :: City "${City_HeadOffice}" is not displayed in Head Office tab in Contact Us page.

    Wait And Click     //div[@class='vc_tta-tabs-container']//span[text()='Regional Office :']
    Sleep    1
    Validate Element   (//h4[text()='SRD Logistics Pvt Ltd.'])[2]    PASSED :: Company name "SRD Logistics Pvt Ltd" is displayed in Regional Office tab in Contact Us page.    FAILED :: Company name "SRD Logistics Pvt Ltd" is not displayed in Regional Office tab in Contact Us page.
    Validate Content   ${Address_RegionalOffice}    PASSED :: Address is displayed in Regional Office tab in Contact Us page.    FAILED :: Address "${Address_RegionalOffice}" is not displayed in Regional Office tab in Contact Us page.
    Validate Content Contains   ${Phone1_RegionalOffice}    PASSED :: Phone no. is displayed in Regional Office tab in Contact Us page.    FAILED :: Phone no. "${Phone1_RegionalOffice}" is not displayed in Regional Office tab in Contact Us page.
    Validate Content   ${Phone2_RegionalOffice}    PASSED :: Phone no. is displayed in Regional Office tab in Contact Us page.    FAILED :: Phone no. "${Phone2_RegionalOffice}" is not displayed in Regional Office tab in Contact Us page.
    Validate Content   ${Email_RegionalOffice}    PASSED :: Email is displayed in Regional Office tab in Contact Us page.    FAILED :: Email "${Email_RegionalOffice}" is not displayed in Regional Office tab in Contact Us page.
    Validate Content   ${City_RegionalOffice}    PASSED :: City is displayed in Regional Office tab in Contact Us page.    FAILED :: City "${City_RegionalOffice}" is not displayed in Regional Office tab in Contact Us page.

    Wait And Click     //div[@class='vc_tta-tabs-container']//span[text()='Administrative Office :']
    Sleep    1
    Validate Element   (//h4[text()='SRD Logistics Pvt Ltd.'])[3]    PASSED :: Company name "SRD Logistics Pvt Ltd" is displayed in Administrative Office tab in Contact Us page.    FAILED :: Company name "SRD Logistics Pvt Ltd" is not displayed in Administrative Office tab in Contact Us page.
    Validate Content   ${Address_AdministrativeOffice}    PASSED :: Address is displayed in Administrative Office tab in Contact Us page.    FAILED :: Address "${Address_AdministrativeOffice}" is not displayed in Administrative Office tab in Contact Us page.
    Validate Content Contains   ${Phone1_AdministrativeOffice}    PASSED :: Phone no. is displayed in Administrative Office tab in Contact Us page.    FAILED :: Phone no. "${Phone1_AdministrativeOffice}" is not displayed in Administrative Office tab in Contact Us page.
    Validate Content   ${Phone2_AdministrativeOffice}    PASSED :: Phone no. is displayed in Administrative Office tab in Contact Us page.    FAILED :: Phone no. "${Phone2_AdministrativeOffice}" is not displayed in Administrative Office tab in Contact Us page.
    Validate Content   ${Email_AdministrativeOffice}    PASSED :: Email is displayed in Administrative Office tab in Contact Us page.    FAILED :: Email "${Email_AdministrativeOffice}" is not displayed in Administrative Office tab in Contact Us page.
    Validate Content   ${City_AdministrativeOffice}    PASSED :: City is displayed in Administrative Office tab in Contact Us page.    FAILED :: City "${City_AdministrativeOffice}" is not displayed in Administrative Office tab in Contact Us page.

Validate Give Your Feedback Form
    Mouse Over    ${Feedback_Link_Locator}
    Validate Element    ${GiveFeedback_Link_Locator}    \nPASSED :: "Give Your Feedback" link is displayed in Feedback.    \nFAILED :: "Give Your Feedback" link is not displayed in Feedback.
    Sleep    0.5
    Wait And Click      ${GiveFeedback_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${GiveYourFeedback_PageTitle}'=='${Title}'   Log To Console   PASSED :: "${Title}" page title is displayed correctly.   ELSE    Fail   FAILED :: Page title should be "${GiveYourFeedback_PageTitle}" but it was "${Title}".
    Validate Element    ${GiveFeedback_Header_Locator}   PASSED :: Header "Give Your Feedback" is displayed.    FAILED :: Header "Give Your Feedback" is not displayed.
    Wait And Input      ${Name_Textbox_Feedback_Locator}          ${Name_Feedback}
    Wait And Input      ${Email_Textbox_Feedback_Locator}         ${Email_Feedback}
    Wait And Input      ${Message_Textbox_Feedback_Locator}        ${Message_Feedback}
    Sleep    0.5
    Wait And Click      ${Submit_Button_Feedback_Locator}
    Validate Element    ${SentSuccess_Message_Feedback_Locator}    PASSED :: Message for "Give Your Feedback" is successfully sent.    FAILED :: Message for "Give Your Feedback" is not sent.    30

Validate Write A Testimonial Form
    Mouse Over    ${Feedback_Link_Locator}
    Validate Element    ${Testimonial_Link_Locator}    \nPASSED :: "Write A Testimonial" link is displayed in Feedback.    \nFAILED :: "Write A Testimonial" link is not displayed in Feedback.
    Sleep    0.5
    Wait And Click      ${Testimonial_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${WriteATestimonial_PageTitle}'=='${Title}'   Log To Console   PASSED :: "${Title}" page title is displayed correctly.   ELSE    Fail   FAILED :: Page title should be "${WriteATestimonial_PageTitle}" but it was "${Title}".
    Validate Element    ${WriteATestimonial_Header_Locator}   PASSED :: Header "Write A Testimonial" is displayed.    FAILED :: Header "Write A Testimonial" is not displayed.
    Wait And Input      ${Name_Textbox_Testimonial_Locator}          ${Name_Testimonial}
    Wait And Input      ${Email_Textbox_Testimonial_Locator}         ${Email_Testimonial}
    Wait And Input      ${Company_Textbox_Testimonial_Locator}       ${Company_Testimonial}
    Wait And Input      ${Designation_Textbox_Testimonial_Locator}       ${Designation_Testimonial}
    Wait And Input      ${Message_Textbox_Testimonial_Locator}        ${Message_Testimonial}
    Sleep    0.5
    Wait And Click      ${Submit_Button_Testimonial_Locator}
    Validate Element    ${SentSuccess_Message_Testimonial_Locator}    PASSED :: Message for "Write A Testimonial" is successfully sent.    FAILED :: Message for "Write A Testimonial" is not sent.    30


Validate Consignment Tracking
    Wait And Click    ${TrackConsignment_Link_Locator}
    Select Window       NEW
    Sleep    1
    ${Title}    Get Title
    Run Keyword If    '${TrackConsignment_PageTitle}'=='${Title}'   Log To Console   PASSED :: "${Title}" page title is displayed correctly.   ELSE    Fail   FAILED :: Page title should be "${TrackConsignment_PageTitle}" but it was "${Title}".
    Validate Element    ${TrackConsignment_Header_Locator}   PASSED :: Header "Track Consignment" is displayed.    FAILED :: Header "Track Consignment" is not displayed.
    Validate Content    ${Line1_TrackConsignment}    PASSED :: Line 1 content is displayed in Track Consignment page.    FAILED :: Line 1 content is not displayed in Track Consignment page "${Line1_TrackConsignment}".
    Validate Content    ${Line2_TrackConsignment}    PASSED :: Line 2 content is displayed in Track Consignment page.    FAILED :: Line 2 content is not displayed in Track Consignment page "${Line2_TrackConsignment}".
    ${LrList_Length}    Get Length      ${LrNo_List}
    ${LrList_Length}    Evaluate        ${LrList_Length}-1
    ${ListIndex}        Evaluate        random.randint(0, ${LrList_Length})
    ${LrNo}             Set Variable    ${LrNo_List}[${ListIndex}]
    Log To Console      \nTracking consignment for LR No: ${LrNo}
    Wait And Input      ${LrNo_Textbox_Locator}     ${LrNo}
    Wait And Click      ${Track_Button_Locator}

    ### Validating Tracking details
    Validate Element    //h3[text()='LR No']    PASSED :: Header "LR No" is displayed in Track Consignment page.    FAILED :: Header "LR No" is not displayed in Track Consignment page.
    ${LrNo_App}     Get Text    //p[@id='lrNo']
    Run Keyword If    '${LrNo_App}'=='${LrNo}'   Log To Console   PASSED :: LR Number in the result matches with the LR number being searched for "${LrNo}"    ELSE    Fail    FAILED :: LR Number in the result should be "${LrNo}" but it was "${LrNo_App}"
    Validate Element    //h3[text()='Number Of Articles']    PASSED :: Header "Number Of Articles" is displayed in Track Consignment page.    FAILED :: PASSED :: Header "Number Of Articles" is not displayed in Track Consignment page.
    ${Articles_App}     Get Text    //p[@id='articles']
    Should Not Be Empty     ${Articles_App}    FAILED :: Number of articles value is not displayed.
    Log To Console    PASSED :: Number of articles is not empty and has value "${Articles_App}".
    Validate Element    //h3[text()='Weight']    PASSED :: Header "Weight" is displayed in Track Consignment page.    FAILED :: Header "Weight" is not displayed in Track Consignment page.
    ${Weight_App}     Get Text    //p[@id='chgWgt']
    Should Not Be Empty     ${Weight_App}    FAILED :: Weight value is not displayed.
    Log To Console    PASSED :: Weight is not empty and has value "${Weight_App}".
    Validate Element    //h3[text()='Status']    PASSED :: Header "Status" is displayed in Track Consignment page.    FAILED :: Header "Status" is not displayed in Track Consignment page.
    ${Status_App}     Get Text    //p[@id='status']
    Should Not Be Empty     ${Status_App}    FAILED :: Status value is not displayed.
    Log To Console    PASSED :: Status is not empty and has value "${Status_App}".
    Validate Element    //h3[text()='Booking Date']    PASSED :: Header "Booking Date" is displayed in Track Consignment page.    FAILED :: Header "Booking Date" is not displayed in Track Consignment page.
    ${BookingDate_App}     Get Text    //p[@id='bookingDate']
    Should Not Be Empty     ${BookingDate_App}    FAILED :: Booking Date value is not displayed.
    Log To Console    PASSED :: Booking Date is not empty and has value "${BookingDate_App}".
    Validate Element    //h3[text()='Route']    PASSED :: Header "Route" is displayed in Track Consignment page.    FAILED :: Header "Route" is not displayed in Track Consignment page.
    ${Route_App}     Get Text    //p[@id='route']
    Should Not Be Empty     ${Route_App}    FAILED :: Route value is not displayed.
    Log To Console    PASSED :: Route is not empty and has value "${Route_App}".
    Validate Element    //h3[text()='Goods']    PASSED :: Header "Goods" is displayed in Track Consignment page.    FAILED :: Header "Goods" is not displayed in Track Consignment page.
    ${Goods_App}     Get Text    //p[@id='commodity']
    Scroll To Element    //p[@id='commodity']
    Should Not Be Empty     ${Goods_App}    FAILED :: Goods value is not displayed.
    Log To Console    PASSED :: Goods is not empty and has value "${Goods_App}".

#    ## Validating details in map
##    Validate Element    ${Source_Map_Locator}    PASSED :: Source icon is displayed in the map.    FAILED :: Source icon is not displayed in the map.
#    Sleep    2
#    Wait And Click      ${Source_Map_Locator}
#    Validate Element    //u[text()='Source Details']    PASSED :: Header "Source Details" is displayed in the map in Track Consignment page.    FAILED :: Header "Source Details" is not displayed in the map in Track Consignment page.
#    ${ConsignmentNo}    Get Text    //u[text()='Source Details']/../../../p[1]
#    ${Status}           Get Text    //u[text()='Source Details']/../../../p[2]
#    ${Source}           Get Text    //u[text()='Source Details']/../../../p[3]
#    ${ContactPerson}    Get Text    //u[text()='Source Details']/../../../p[4]
#    ${ContactNo}        Get Text    //u[text()='Source Details']/../../../p[5]
#    Wait And Click      //u[text()='Source Details']/../../../../../../button
#
##    Validate Element    ${Destination_Map_Locator}    PASSED :: Destination icon is displayed in the map.    FAILED :: Destination icon is not displayed in the map.
#    Wait And Click      ${Destination_Map_Locator}
#    Validate Element    //u[text()='Destination Details']    PASSED :: Header "Source Details" is displayed in the map in Track Consignment page.    FAILED :: Header "Source Details" is not displayed in the map in Track Consignment page.
#    ${ConsignmentNo}    Get Text    //u[text()='Destination Details']/../../../p[1]
#    ${Status}           Get Text    //u[text()='Destination Details']/../../../p[2]
#    ${Source}           Get Text    //u[text()='Destination Details']/../../../p[3]
#    ${ContactPerson}    Get Text    //u[text()='Destination Details']/../../../p[4]
#    ${ContactNo}        Get Text    //u[text()='Destination Details']/../../../p[5]
#    Wait And Click      //u[text()='Destination Details']/../../../../../../button

    #Reset button
    Wait And Click      ${Reset_Button_Locator}
    Sleep    1
#    Textfield Value Should Be    ${LrNo_Textbox_Locator}    ${EMPTY}
    Close Window
    Select Window       MAIN

Validate Work At SRD Page Form
    Mouse Over    ${JoinUs_Link_Locator}
    Validate Element    ${WorkAtSRD_Link_Locator}    \nPASSED :: "Work at SRD" link is displayed in Join Us.    \nFAILED :: "Work at SRD" link is not displayed in Join Us.
    Sleep    0.5
    Wait And Click      ${WorkAtSRD_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${WorkAtSRD_PageTitle}'=='${Title}'   Log To Console   PASSED :: "${Title}" page title is displayed correctly.   ELSE    Fail   FAILED :: Page title should be "${WorkAtSRD_PageTitle}" but it was "${Title}".
    Validate Element    ${WorkAtSRD_Header_Locator}   PASSED :: Header "Work at SRD" is displayed.    FAILED :: Header "Work at SRD" is not displayed.
    Wait And Input      ${FName_Textbox_WorkAtSRD_Locator}          ${FName_WorkAtSRD}
    Wait And Input      ${LName_Textbox_WorkAtSRD_Locator}         ${LName_WorkAtSRD}
    Wait And Input      ${Email_Textbox_WorkAtSRD_Locator}       ${Email_WorkAtSRD}
    Wait And Input      ${PhNo_Textbox_WorkAtSRD_Locator}       ${Contact_WorkAtSRD}
    Wait And Input      ${Post_Textbox_WorkAtSRD_Locator}          ${Post_WorkAtSRD}
    Choose File         ${ChooseFile_WorkAtSRD_Locator}             ${CURDIR}/TestFileUpload.png
    Wait And Input      ${Message_Textbox_WorkAtSRD_Locator}        ${Message_WorkAtSRD}
    Sleep    0.5
    Wait And Click      ${Submit_Button_WorkAtSRD_Locator}
    Validate Element    ${SentSuccess_Message_WorkAtSRD_Locator}    PASSED :: Message and candidate details for "Work At SRD" is successfully sent.    FAILED :: Message and candidate details for "Work At SRD" is not sent after clicking on Submit button.    30

Validate Franchisee Page Form
    Mouse Over    ${JoinUs_Link_Locator}
    Validate Element    ${Franchisee_Link_Locator}    \nPASSED :: "Be a Franchisee" link is displayed in Join Us.    \nFAILED :: "Be a Franchisee" link is not displayed in Join Us.
    Sleep    0.5
    Wait And Click      ${Franchisee_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${Franchisee_PageTitle}'=='${Title}'   Log To Console   PASSED :: "${Title}" page title is displayed correctly.   ELSE    Fail   FAILED :: Page title should be "${Franchisee_PageTitle}" but it was "${Title}".
    Validate Element    ${Franchisee_Header_Locator}   PASSED :: Header "Be a Franchisee" is displayed.    FAILED :: Header "Be a Franchisee" is not displayed.
    Validate Content    ${Line1_Franchisee}          PASSED :: Fill form line is displayed in Be a Franchisee page.    FAILED :: Fill form line is displayed in Be a Franchisee page "${Line1_Franchisee}".
    Wait And Input      ${Name_Textbox_Franchisee_Locator}          ${Name_Franchisee}
    Wait And Input      ${Email_Textbox_Franchisee_Locator}         ${Email_Franchisee}
    Wait And Input      ${Address_Textbox_Franchisee_Locator}       ${Address_Franchisee}
    Wait And Input      ${PhNo_Textbox_Franchisee_Locator}       ${PhNo_Franchisee}
    Wait And Input      ${Area_Textbox_Franchisee_Locator}          ${Area_Franchisee}
    Wait And Input      ${City_Textbox_Franchisee_Locator}          ${City_Franchisee}
    Wait And Input      ${Message_Textbox_Franchisee_Locator}       ${Message_Franchisee}
    Sleep    0.5
    Wait And Click      ${Submit_Button_Franchisee_Locator}
    Validate Element    ${SentSuccess_Message_Franchisee_Locator}    PASSED :: Message for "Be a Franchisee" is successfully sent.    FAILED :: Message for "Be a Franchisee" is not sent.    30

#Validate Locations
#    [Arguments]   ${Region}
#    Mouse Over    ${Network_Link_Locator}
#    Validate Element    ${${Region}_Link_Locator}    PASSED :: ${Region} link is displayed in Services.    FAILED :: ${Region} link is not displayed in Services.
#    Wait And Click      ${${Region}_Link_Locator}
#    Validate Common Features
#    ${Title}    Get Title
#    Run Keyword If    '${${Region}_PageTitle}'=='${Title}'   Log To Console   PASSED :: ${Region} page title is displayed correctly.   ELSE    Fail   FAILED :: ${Region} page title should be "${${Region}_PageTitle}" but it was "${Title}".
#    Validate Element    ${${Region}_Header_Locator}   PASSED :: Header ${Region} is displayed.    FAILED :: Header ${Region} is not displayed.
#    ${i}   Set Variable   0
#    FOR   ${Location}   IN    @{${Region}_LocationList}
#        ${Quotient}    Evaluate   ${i}/4
#        ${ScrollIndex}   Evaluate   ${i}-3
#        Run Keyword If    ${i}%4==0 and ${i}!=0    Scroll To Element   (//h6/../..)[${ScrollIndex}]    true
#        ${Xpath}    Replace Variables    //h6/a[@title='${Location}']
#        Validate Element    ${Xpath}    PASSED :: Location "${Location}" is displayed in ${Region} page.    FAILED :: Location "${Location}" is not displayed in ${Region} page.
#        Sleep    1
#        Wait And Click      ${Xpath}
#        Sleep    1
#        Select Window       NEW
#        Validate Common Features
#        ${Title}   Get Title
#        Run Keyword If    '${PageTitle_${Location}}'=='${Title}'   Log To Console   PASSED :: ${Region} >> ${Location} page title is displayed correctly.   ELSE    Fail   FAILED :: ${Region} >> ${Location} page title should be "${PageTitle_${Location}}" but it was "${Title}".
#        Validate Element    //div[@class="g5plus-heading style1 text-left color-dark"]/h2[contains(text(),'${Header_${Location}}')]    PASSED :: Header ${Header_${Location}} is displayed ${Region} >> ${Location} page.    FAILED :: Header ${Header_${Location}} is not displayed ${Region} >> ${Location} page.
#        Validate Element    //h6[text()='${Name_Header_${Location}}']    PASSED :: Header "${Name_Header_${Location}}" is displayed in ${Region} >> ${Location} page.    FAILED :: Header "${Name_Header_${Location}}" is not displayed in ${Region} >> ${Location} page.
#        Validate Content Contains   ${Name_Value_${Location}}   PASSED :: Name is displayed correctly in ${Region} >> ${Location} page.   FAILED :: Name "${Name_Value_${Location}}" is not displayed in ${Region} >> ${Location} page.
#        Validate Element    //h6[text()='${AddressDetails_Header_${Location}}']    PASSED :: Header "${AddressDetails_Header_${Location}}" is displayed in ${Region} >> ${Location} page.    FAILED :: Header "${AddressDetails_Header_${Location}}" is not displayed in ${Region} >> ${Location} page.
#        ${AddressValue}    Get Text    //h6[text()='${AddressDetails_Header_${Location}}']/following-sibling::p
#        @{AddressValue_List}   Split To Lines    ${AddressValue}
#        Compare Lists    ${AddressValue_List}    ${AddressDetails_Value_${Location}}    PASSED :: Address line is displayed correctly in ${Region} >> ${Location}.   FAILED :: Address line is not displayed in ${Region} >> ${Location}
#        Validate Element    //h6[text()='${Phone_Numbers_Header_${Location}}']    PASSED :: Header "${Phone_Numbers_Header_${Location}}" is displayed.    FAILED :: Header "${Phone_Numbers_Header_${Location}}" is not displayed.
#        ${PhoneValue}    Get Text    //h6[text()='${Phone_Numbers_Header_${Location}}']/following-sibling::p
#        @{PhoneValue_List}   Split To Lines    ${PhoneValue}
#        Compare Lists    ${PhoneValue_List}    ${Phone_Numbers_Value_${Location}}    PASSED :: Phone number is displayed correctly in ${Region} >> ${Location}.   FAILED :: Phone number is not displayed in ${Region} >> ${Location}
#        Validate Element    //h6[text()='${EmailAddress_Header_${Location}}']    PASSED :: Header "${EmailAddress_Header_${Location}}" is displayed in ${Region} >> ${Location} page.    FAILED :: Header "${EmailAddress_Header_${Location}}" is not displayed in ${Region} >> ${Location} page.
#        Validate Content    ${EmailAddress_Value_${Location}}   PASSED :: Email is displayed correctly in ${Region} >> ${Location} page.   FAILED :: Name "${Name_Value_${Location}}" is not displayed in ${Region} >> ${Location} page.
#        Validate Element    //h6[text()='${City_Header_${Location}}']    PASSED :: Header "${Name_Header_${Location}}" is displayed in ${Region} >> ${Location} page.    FAILED :: Header "${Name_Header_${Location}}" is not displayed in ${Region} >> ${Location} page.
#        Validate Element    //p[text()='${City_Value_${Location}}']   PASSED :: City "${City_Value_${Location}}" is displayed correctly in ${Region} >> ${Location} page.   FAILED :: City "${City_Value_${Location}}" is not displayed in ${Region} >> ${Location} page.
#        Validate Element    ${CityEconomy_Header_Locator}    PASSED :: Header ECONOMY OF THE CITY is displayed in ${Region} >> ${Location} page.   FAILED :: Header ECONOMY OF THE CITY is not displayed in ${Region} >> ${Location} page.
#        ${CityEconomyContent}    Get Text    ${CityEconomy_Content_Locator}
#        @{CityEconomyContent_List}   Split To Lines   ${CityEconomyContent}
#        Compare Lists   ${CityEconomyContent_List}   ${Economy_${Location}}   PASSED :: Economy Of The City content is displayed correctly in ${Region} >> ${Location} page.   FAILED :: Economy Of The City content is not displayed correctly in ${Region} >> ${Location} page
#        Close Window
#        Select Window       MAIN
#        ${i}   Evaluate   ${i}+1
#    END

Validate Locations
    [Arguments]   ${Region}
    Mouse Over    ${Network_Link_Locator}
    Validate Element    ${${Region}_Link_Locator}    PASSED :: ${Region} link is displayed in Network.    FAILED :: ${Region} link is not displayed in Network.
    Sleep    0.5
    Wait And Click      ${${Region}_Link_Locator}
    Sleep    1
    Select Window       NEW
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${${Region}_PageTitle}'=='${Title}'   Log To Console   PASSED :: ${Region} page title is displayed correctly.   ELSE    Fail   FAILED :: ${Region} page title should be "${${Region}_PageTitle}" but it was "${Title}".
    Validate Element    ${${Region}_Header_Locator}   PASSED :: Header ${Region} is displayed.    FAILED :: Header ${Region} is not displayed.
    ${i}   Set Variable   0
    Set Test Variable    ${i}   ${i}
    FOR   ${Location}   IN    @{${Region}_LocationList}
        ${Quotient}    Evaluate   ${i}/4
        ${ScrollIndex}   Evaluate   ${i}-3
        Run Keyword If    ${i}%4==0 and ${i}!=0    Scroll To Element   (//h6/../..)[${ScrollIndex}]    true
        ${Xpath}    Replace Variables    //h6/a[@title='${Location}']
        Validate Element    ${Xpath}    PASSED :: Location "${Location}" is displayed in ${Region} page.    FAILED :: Location "${Location}" is not displayed in ${Region} page.
        Sleep    3
        ${TmpStatus}    Run Keyword And Return Status    Wait And Click      ${Xpath}
        Run Keyword Unless    ${TmpStatus}    Scroll To Element   (//h6/../..)[${ScrollIndex}]    true
        Run Keyword Unless    ${TmpStatus}    Wait And Click      ${Xpath}
        Sleep    2
        Select Window       NEW
        Validate Common Features
        ${Status}    Run Keyword And Return Status    Wait Until Element Is Visible   (//h6/a)[1]   1
        Set Test Variable    ${Status}   ${Status}
        Run Keyword If   ${Status}   Validate Sub Locations    ${Location}   ELSE    Validate Location Page   ${Location}   ${Region}
    END

Validate Sub Locations
    [Arguments]   ${Region}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${${Region}_PageTitle}'=='${Title}'   Log To Console   PASSED :: ${Region} page title is displayed correctly.   ELSE    Fail   FAILED :: ${Region} page title should be "${${Region}_PageTitle}" but it was "${Title}".
    Validate Element    ${${Region}_Header_Locator}   PASSED :: Header ${Region} is displayed.    FAILED :: Header ${Region} is not displayed.



#    ${i}   Set Variable   0
#    Set Test Variable    ${i}   ${i}
    FOR   ${Location}   IN    @{${Region}_LocationList}
#        ${Quotient}    Evaluate   ${i}/4
#        ${ScrollIndex}   Evaluate   ${i}-3
#        Run Keyword If    ${i}%4==0 and ${i}!=0    Scroll To Element   (//h6/../..)[${ScrollIndex}]    true
        ${Xpath}    Replace Variables    //h6/a[@title='${Location}']
        Validate Element    ${Xpath}    PASSED :: Location "${Location}" is displayed in ${Region} page.    FAILED :: Location "${Location}" is not displayed in ${Region} page.
        Sleep    1
        Wait And Click      ${Xpath}
        Sleep    1
#        Select Window       NEW
        Validate Location Page   ${Location}   ${Region}    False
    END
    Close Window
    ${Wondows}        Get Window Handles
    Select Window       ${Wondows}[-1]


Validate Location Page
    [Arguments]   ${Location}   ${Region}    ${CloseWindowFlag}=True
    Validate Common Features
    ${Title}   Get Title
    Run Keyword If    '${PageTitle_${Location}}'=='${Title}'   Log To Console   PASSED :: ${Region} >> ${Location} page title is displayed correctly.   ELSE    Fail   FAILED :: ${Region} >> ${Location} page title should be "${PageTitle_${Location}}" but it was "${Title}".
    Validate Element    //div[contains(@class,'g5plus-heading style1 text-left color-dark')]/h2[contains(text(),'${Header_${Location}}')]    PASSED :: Header ${Header_${Location}} is displayed ${Region} >> ${Location} page.    FAILED :: Header ${Header_${Location}} is not displayed ${Region} >> ${Location} page.
    Validate Element    //h6[text()='${Name_Header_${Location}}']    PASSED :: Header "${Name_Header_${Location}}" is displayed in ${Region} >> ${Location} page.    FAILED :: Header "${Name_Header_${Location}}" is not displayed in ${Region} >> ${Location} page.
    Validate Content Contains   ${Name_Value_${Location}}   PASSED :: Name is displayed correctly in ${Region} >> ${Location} page.   FAILED :: Name "${Name_Value_${Location}}" is not displayed in ${Region} >> ${Location} page.
    Validate Element    //h6[text()='${AddressDetails_Header_${Location}}']    PASSED :: Header "${AddressDetails_Header_${Location}}" is displayed in ${Region} >> ${Location} page.    FAILED :: Header "${AddressDetails_Header_${Location}}" is not displayed in ${Region} >> ${Location} page.
    ${AddressValue}    Get Text    //h6[text()='${AddressDetails_Header_${Location}}']/following-sibling::p
    @{AddressValue_List}   Split To Lines    ${AddressValue}
    Compare Lists    ${AddressValue_List}    ${AddressDetails_Value_${Location}}    PASSED :: Address line is displayed correctly in ${Region} >> ${Location}.   FAILED :: Address line is not displayed in ${Region} >> ${Location}
    Validate Element    //h6[text()='${Phone_Numbers_Header_${Location}}']    PASSED :: Header "${Phone_Numbers_Header_${Location}}" is displayed.    FAILED :: Header "${Phone_Numbers_Header_${Location}}" is not displayed.
    ${PhoneValue}    Get Text    //h6[text()='${Phone_Numbers_Header_${Location}}']/following-sibling::p
    @{PhoneValue_List}   Split To Lines    ${PhoneValue}
    Compare Lists    ${PhoneValue_List}    ${Phone_Numbers_Value_${Location}}    PASSED :: Phone number is displayed correctly in ${Region} >> ${Location}.   FAILED :: Phone number is not displayed in ${Region} >> ${Location}
    Validate Element    //h6[text()='${EmailAddress_Header_${Location}}']    PASSED :: Header "${EmailAddress_Header_${Location}}" is displayed in ${Region} >> ${Location} page.    FAILED :: Header "${EmailAddress_Header_${Location}}" is not displayed in ${Region} >> ${Location} page.
    Validate Content Contains    ${EmailAddress_Value_${Location}}   PASSED :: Email is displayed correctly in ${Region} >> ${Location} page.   FAILED :: Email "${EmailAddress_Value_${Location}}" is not displayed in ${Region} >> ${Location} page.
    Validate Element    //h6[text()='${City_Header_${Location}}']    PASSED :: Header "${City_Header_${Location}}" is displayed in ${Region} >> ${Location} page.    FAILED :: Header "${City_Header_${Location}}" is not displayed in ${Region} >> ${Location} page.
    Validate Element    //p[contains(text(),'${City_Value_${Location}}')]   PASSED :: City "${City_Value_${Location}}" is displayed correctly in ${Region} >> ${Location} page.   FAILED :: City "${City_Value_${Location}}" is not displayed in ${Region} >> ${Location} page.
    Validate Element    ${CityEconomy_Header_Locator}    PASSED :: Header ECONOMY OF THE CITY is displayed in ${Region} >> ${Location} page.   FAILED :: Header ECONOMY OF THE CITY is not displayed in ${Region} >> ${Location} page.
    ${CityEconomyContent}    Get Text    ${CityEconomy_Content_Locator}
    @{CityEconomyContent_List}   Split To Lines   ${CityEconomyContent}
    Compare Lists   ${CityEconomyContent_List}   ${Economy_${Location}}   PASSED :: Economy Of The City content is displayed correctly in ${Region} >> ${Location} page.   FAILED :: Economy Of The City content is not displayed correctly in ${Region} >> ${Location} page
    Run Keyword If    ${CloseWindowFlag}    Close Window    ELSE    Go Back
    ${Wondows}        Run Keyword If    ${CloseWindowFlag}    Get Window Handles
    Run Keyword If    ${CloseWindowFlag}    Select Window       ${Wondows}[-1]
    ${i}   Run Keyword If    ${Status}   Set Variable    ${i}    ELSE    Evaluate   ${i}+1
    Set Test Variable    ${i}   ${i}

Compare Lists
    [Arguments]   ${ActualList}    ${ExpectedList}   ${PassMessage}    ${FailMessage}
    ${index}   Set Variable   0
    FOR   ${Line}   IN   @{ExpectedList}
        Compare Strings   ${ActualList}[${index}]    ${Line}   ${PassMessage}    ${FailMessage}. Expected - "${Line}".
        ${index}   Evaluate   ${index}+1
    END

Validate Common Features
    Validate Element    ${Logo_Locator}    \nPASSED :: SRD Logo is displayed.    \nFAILED :: SRD Logo is not displayed.
    Validate Content    ${Text_TollFreeNumber}    PASSED :: Toll free number "${Text_TollFreeNumber}" is displayed.   FAILED :: Toll free number "${Text_TollFreeNumber}" is not displayed.
    Validate Content    ${Text_CinNo&TransportId}    PASSED :: CIN Number and Transporter Id is displayed.    FAILED :: CIN Number and Transporter Id is not displayed "${Text_CinNo&TransportId}".
    Validate Element    ${Chat_LeaveMessage_Locator}    PASSED :: Whatsapp click to chat is displayed.    FAILED :: Whatsapp click to chat is not displayed.
    Validate Element    ${Home_Link_Locator}    PASSED :: Home link is displayed.    FAILED :: Home link is displayed.
    Validate Element    ${AboutUs_Link_Locator}    PASSED :: About Us link is displayed.    FAILED :: About Us link is displayed.
    Validate Element    ${Services_Link_Locator}    PASSED :: Services link is displayed.    FAILED :: Services link is displayed.
    Validate Element    ${Network_Link_Locator}    PASSED :: Network link is displayed.    FAILED :: Network link is displayed.
    Validate Element    ${JoinUs_Link_Locator}    PASSED :: Join Us link is displayed.    FAILED :: Join Us link is displayed.
    Validate Element    ${TrackConsignment_Link_Locator}    PASSED :: Track Consignment link is displayed.    FAILED :: Track Consignment link is displayed.
    Validate Element    ${Feedback_Link_Locator}    PASSED :: Feedback link is displayed.    FAILED :: Feedback link is displayed.
    Validate Element    ${ContactUs_Link_Locator}    PASSED :: Contact Us link is displayed.    FAILED :: Contact Us link is displayed.

Validate Distribution Page Contents
    Mouse Over    ${Services_Link_Locator}
    Validate Element    ${Distribution_Link_Locator}    PASSED :: Distribution link is displayed in Services.    FAILED :: Distribution link is not displayed in Services.
    Wait And Click      ${Distribution_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${DistributionPageTitle}'=='${Title}'   Log To Console   PASSED :: Distribution page title is displayed correctly.   ELSE    Fail   FAILED :: Distribution page title should be "${DistributionPageTitle}" but it was "${Title}".
    Validate Element    ${Distribution_Header_Locator}   PASSED :: Header DISTRIBUTION is displayed.    FAILED :: Header DISTRIBUTION is not displayed.
    Validate Content    ${Line1_DistributionPage}    PASSED :: Line 1 content is displayed in Distribution page.    FAILED :: Line 1 content is not displayed in Distribution page "${Line1_DistributionPage}".
    Validate Content    ${Line2_DistributionPage}    PASSED :: Line 2 content is displayed in Distribution page.    FAILED :: Line 2 content is not displayed in Distribution page "${Line2_DistributionPage}".
    Validate Content    ${Line3_DistributionPage}    PASSED :: Line 3 content is displayed in Distribution page.    FAILED :: Line 3 content is not displayed in Distribution page "${Line3_DistributionPage}".
    Validate Content    ${Line4_DistributionPage}    PASSED :: Line 4 content is displayed in Distribution page.    FAILED :: Line 4 content is not displayed in Distribution page "${Line4_DistributionPage}".
    Validate Content    ${Line5_DistributionPage}    PASSED :: Line 5 content is displayed in Distribution page.    FAILED :: Line 5 content is not displayed in Distribution page "${Line5_DistributionPage}".
    Validate Content    ${Header_DistributionBenefits}      PASSED :: Header BENEFITS & FEATURES is displayed.    FAILED :: Header BENEFITS & FEATURES is not displayed.
    ${Benefits_Text}    Get Text    ${Benefits_Distribution_Locator}
    @{Benefits_List}    Split To Lines   ${Benefits_Text}
    Compare Strings   ${Benefits_List}[0]    ${Line1_DistributionBenefits}   PASSED :: Line 1 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 1 BENEFITS & FEATURES content is not displayed in Distribution page "${Line1_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[1]    ${Line2_DistributionBenefits}   PASSED :: Line 2 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 2 BENEFITS & FEATURES content is not displayed in Distribution page "${Line2_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[2]    ${Line3_DistributionBenefits}   PASSED :: Line 3 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 3 BENEFITS & FEATURES content is not displayed in Distribution page "${Line3_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[3]    ${Line4_DistributionBenefits}   PASSED :: Line 4 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 4 BENEFITS & FEATURES content is not displayed in Distribution page "${Line4_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[4]    ${Line5_DistributionBenefits}   PASSED :: Line 5 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 5 BENEFITS & FEATURES content is not displayed in Distribution page "${Line5_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[5]    ${Line6_DistributionBenefits}   PASSED :: Line 6 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 6 BENEFITS & FEATURES content is not displayed in Distribution page "${Line6_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[6]    ${Line7_DistributionBenefits}   PASSED :: Line 7 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 7 BENEFITS & FEATURES content is not displayed in Distribution page "${Line7_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[7]    ${Line8_DistributionBenefits}   PASSED :: Line 8 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 8 BENEFITS & FEATURES content is not displayed in Distribution page "${Line8_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[8]    ${Line9_DistributionBenefits}   PASSED :: Line 9 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 9 BENEFITS & FEATURES content is not displayed in Distribution page "${Line9_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[9]    ${Line10_DistributionBenefits}   PASSED :: Line 10 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 10 BENEFITS & FEATURES content is not displayed in Distribution page "${Line10_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[10]    ${Line11_DistributionBenefits}   PASSED :: Line 11 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 11 BENEFITS & FEATURES content is not displayed in Distribution page "${Line11_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[11]    ${Line12_DistributionBenefits}   PASSED :: Line 12 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 12 BENEFITS & FEATURES content is not displayed in Distribution page "${Line12_DistributionBenefits}".
    Compare Strings   ${Benefits_List}[12]    ${Line13_DistributionBenefits}   PASSED :: Line 13 BENEFITS & FEATURES content is displayed in Distribution page.    FAILED :: Line 13 BENEFITS & FEATURES content is not displayed in Distribution page "${Line13_DistributionBenefits}".

Validate Warehousing Page Contents
    Mouse Over    ${Services_Link_Locator}
    Validate Element    ${Warehousing_Link_Locator}    PASSED :: Warehousing link is displayed in Services.    FAILED :: Warehousing link is not displayed in Services.
    Wait And Click      ${Warehousing_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${WarehousingPageTitle}'=='${Title}'   Log To Console   PASSED :: Warehousing page title is displayed correctly.   ELSE    Fail   FAILED :: Warehousing page title should be "${WarehousingPageTitle}" but it was "${Title}".
    Validate Element    ${Warehousing_Header_Locator}   PASSED :: Header WAREHOUSING is displayed.    FAILED :: Header WAREHOUSING is not displayed.
    Validate Content Contains    ${Line1_WarehousingPage}    PASSED :: Line 1 content is displayed in Warehousing page.    FAILED :: Line 1 content is not displayed in Warehousing page "${Line1_WarehousingPage}".
    Validate Content Contains    ${Line2_WarehousingPage}    PASSED :: Line 2 content is displayed in Warehousing page.    FAILED :: Line 2 content is not displayed in Warehousing page "${Line2_WarehousingPage}".
    Validate Content Contains    ${Line3_WarehousingPage}    PASSED :: Line 3 content is displayed in Warehousing page.    FAILED :: Line 3 content is not displayed in Warehousing page "${Line3_WarehousingPage}".
    Validate Content Contains    ${Line4_WarehousingPage}    PASSED :: Line 4 content is displayed in Warehousing page.    FAILED :: Line 4 content is not displayed in Warehousing page "${Line4_WarehousingPage}".
    Validate Content    ${Header_Benefits}      PASSED :: Header BENEFITS OF FTL SERVICE is displayed.    FAILED :: Header BENEFITS OF FTL SERVICE is not displayed.
    Validate Content Contains   ${Line1_Benefits}   PASSED :: Line 1 benefits content is displayed in Warehousing page.    FAILED :: Line 1 benefits content is not displayed in Warehousing page "${Line1_Benefits}".
    Validate Content Contains   ${Line2_Benefits}   PASSED :: Line 2 benefits content is displayed in Warehousing page.    FAILED :: Line 2 benefits content is not displayed in Warehousing page "${Line2_Benefits}".
    Validate Content Contains   ${Line3_Benefits}   PASSED :: Line 3 benefits content is displayed in Warehousing page.    FAILED :: Line 3 benefits content is not displayed in Warehousing page "${Line3_Benefits}".
    Validate Content Contains   ${Line4_Benefits}   PASSED :: Line 4 benefits content is displayed in Warehousing page.    FAILED :: Line 4 benefits content is not displayed in Warehousing page "${Line4_Benefits}".
    Validate Content Contains   ${Line5_Benefits}   PASSED :: Line 5 benefits content is displayed in Warehousing page.    FAILED :: Line 5 benefits content is not displayed in Warehousing page "${Line5_Benefits}".
    Validate Content Contains   ${Line6_Benefits}   PASSED :: Line 6 benefits content is displayed in Warehousing page.    FAILED :: Line 6 benefits content is not displayed in Warehousing page "${Line6_Benefits}".
    Validate Content Contains   ${Line7_Benefits}   PASSED :: Line 7 benefits content is displayed in Warehousing page.    FAILED :: Line 7 benefits content is not displayed in Warehousing page "${Line7_Benefits}".
    Validate Content    ${Header_VAS}      PASSED :: Header VALUE ADDED SERVICES is displayed.    FAILED :: Header VALUE ADDED SERVICES is not displayed.
    ${VAS_Text}    Get Text    ${VAS_Warehousing_Locator}
    @{VAS_List}    Split To Lines   ${VAS_Text}
    Compare Strings   ${VAS_List}[0]    ${Line1_VAS}   PASSED :: Line 1 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 1 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line1_VAS}".
    Compare Strings   ${VAS_List}[1]    ${Line2_VAS}   PASSED :: Line 2 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 2 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line2_VAS}".
    Compare Strings   ${VAS_List}[2]    ${Line3_VAS}   PASSED :: Line 3 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 3 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line3_VAS}".
    Compare Strings   ${VAS_List}[3]    ${Line4_VAS}   PASSED :: Line 4 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 4 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line4_VAS}".
    Compare Strings   ${VAS_List}[4]    ${Line5_VAS}   PASSED :: Line 5 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 5 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line5_VAS}".
    Compare Strings   ${VAS_List}[5]    ${Line6_VAS}   PASSED :: Line 6 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 6 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line6_VAS}".
    Compare Strings   ${VAS_List}[6]    ${Line7_VAS}   PASSED :: Line 7 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 7 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line7_VAS}".
    Compare Strings   ${VAS_List}[7]    ${Line8_VAS}   PASSED :: Line 8 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 8 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line8_VAS}".
    Compare Strings   ${VAS_List}[8]    ${Line9_VAS}   PASSED :: Line 9 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 9 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line9_VAS}".
    Compare Strings   ${VAS_List}[9]    ${Line10_VAS}   PASSED :: Line 10 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 10 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line10_VAS}".
    Compare Strings   ${VAS_List}[10]    ${Line11_VAS}   PASSED :: Line 11 VALUE ADDED SERVICES content is displayed in Warehousing page.    FAILED :: Line 11 VALUE ADDED SERVICES content is not displayed in Warehousing page "${Line11_VAS}".

Validate ODC Cargo Page Contents
    Mouse Over    ${Services_Link_Locator}
    Validate Element    ${ODCCargo_Link_Locator}    PASSED :: ODC Cargo link is displayed in Services.    FAILED :: ODC Cargo link is not displayed in Services.
    Wait And Click      ${ODCCargo_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${ODCCargoPageTitle}'=='${Title}'   Log To Console   PASSED :: ODC Cargo page title is displayed correctly.   ELSE    Fail   FAILED :: ODC Cargo page title should be "${ODCCargoPageTitle}" but it was "${Title}".
    Validate Element    ${ODCCargo_Header_Locator}   PASSED :: Header ODC CARGO is displayed.    FAILED :: Header ODC CARGO is not displayed.
    Validate Content    ${Line1_ODCCargo}    PASSED :: Line 1 content is displayed in ODC Cargo page.    FAILED :: Line 1 content is not displayed in ODC Cargo page "${Line1_ODCCargo}".
    Validate Content    ${Line2_ODCCargo}    PASSED :: Line 2 content is displayed in ODC Cargo page.    FAILED :: Line 2 content is not displayed in ODC Cargo page "${Line2_ODCCargo}".
    Validate Content    ${Line3_ODCCargo}    PASSED :: Line 3 content is displayed in ODC Cargo page.    FAILED :: Line 3 content is not displayed in ODC Cargo page "${Line3_ODCCargo}".
    Validate Content    ${Header_Highlights}    PASSED :: Header HIGHLIGHTS is displayed in ODC Cargo page.    FAILED :: Header HIGHLIGHTS is not displayed in ODC Cargo page.
    Validate Content Contains    ${Line1_Highlights}    PASSED :: Line 1 Highlights content is displayed in ODC Cargo page.    FAILED :: Line 1 Highlights content is not displayed in ODC Cargo page "${Line1_Highlights}".
    Validate Content Contains    ${Line2_Highlights}    PASSED :: Line 2 Highlights content is displayed in ODC Cargo page.    FAILED :: Line 2 Highlights content is not displayed in ODC Cargo page "${Line2_Highlights}".
    Validate Content Contains    ${Line3_Highlights}    PASSED :: Line 3 Highlights content is displayed in ODC Cargo page.    FAILED :: Line 3 Highlights content is not displayed in ODC Cargo page "${Line3_Highlights}".
    Validate Content Contains    ${Line4_Highlights}    PASSED :: Line 4 Highlights content is displayed in ODC Cargo page.    FAILED :: Line 4 Highlights content is not displayed in ODC Cargo page "${Line4_Highlights}".
    Validate Content Contains    ${Line5_Highlights}    PASSED :: Line 5 Highlights content is displayed in ODC Cargo page.    FAILED :: Line 5 Highlights content is not displayed in ODC Cargo page "${Line5_Highlights}".
    Validate Content Contains    ${Line6_Highlights}    PASSED :: Line 6 Highlights content is displayed in ODC Cargo page.    FAILED :: Line 6 Highlights content is not displayed in ODC Cargo page "${Line6_Highlights}".
    Validate Content Contains    ${Line7_Highlights}    PASSED :: Line 7 Highlights content is displayed in ODC Cargo page.    FAILED :: Line 7 Highlights content is not displayed in ODC Cargo page "${Line7_Highlights}".

Validate Full Truck Load Page Contents
    Mouse Over    ${Services_Link_Locator}
    Validate Element    ${FullTruckLoad_Link_Locator}    PASSED :: Full Truck Load link is displayed in Services.    FAILED :: Full Truck Load link is not displayed in Services.
    Wait And Click      ${FullTruckLoad_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${FTLPageTitle}'=='${Title}'   Log To Console   PASSED :: FTL page title is displayed correctly.   ELSE    Fail   FAILED :: FTL page title should be "${FTLPageTitle}" but it was "${Title}".
    Validate Content    ${Line1_FTL}    PASSED :: Line 1 content is displayed in FTL page.    FAILED :: Line 1 content is not displayed in FTL page "${Line1_FTL}".
    Validate Content Contains   ${Line2_FTL}   PASSED :: Line 2 content is displayed in FTL page.    FAILED :: Line 2 content is not displayed in FTL page "${Line2_FTL}".
    Validate Content Contains   ${Line3_FTL}   PASSED :: Line 3 content is displayed in FTL page.    FAILED :: Line 3 content is not displayed in FTL page "${Line3_FTL}".
    Validate Content    ${Header_FTLBenifits}   PASSED :: Header "BENEFITS OF FTL SERVICE" is displayed in FTL page.    FAILED :: Header "BENEFITS OF FTL SERVICE" is not displayed in FTL page.
    Validate Content Contains   ${CostSaving_FTL}    PASSED :: Cost Saving content is displayed in FTL page.    FAILED :: Cost Saving content is not displayed in FTL page "${CostSaving_FTL}".
    Validate Content Contains   ${Convenience_FTL}    PASSED :: Convenience content is displayed in FTL page.    FAILED :: Convenience content is not displayed in FTL page "${Convenience_FTL}".
    Validate Content Contains   ${Speed_FTL}    PASSED :: Speed content is displayed in FTL page.    FAILED :: Speed content is not displayed in FTL page "${Speed_FTL}".
    Validate Content Contains   ${LessRisk_FTL}    PASSED :: Less Risk content is displayed in FTL page.    FAILED :: Less Risk content is not displayed in FTL page "${LessRisk_FTL}".
    Validate Content    ${Header_FTLServiceInclusion}   PASSED :: Header "OUR FULL TRUCK LOAD SERVICES INCLUDE" is displayed in FTL page.    FAILED :: Header "OUR FULL TRUCK LOAD SERVICES INCLUDE" is not displayed in FTL page.
    ${ServiceInclusion_Text}    Get Text    ${FTLServiceInclusion_Locator}
    @{FTLServiceInclusions_List}    Split To Lines   ${ServiceInclusion_Text}
    Compare Strings   ${FTLServiceInclusions_List}[0]    ${Line1_FTLServiceInclusion}   PASSED :: Line 1 FTL Service Inclusions content is displayed in FTL page.    FAILED :: Line 1 FTL Service Inclusions content is not displayed in FTL page "${Line1_FTLServiceInclusion}".
    Compare Strings   ${FTLServiceInclusions_List}[1]    ${Line2_FTLServiceInclusion}   PASSED :: Line 2 FTL Service Inclusions content is displayed in FTL page.    FAILED :: Line 2 FTL Service Inclusions content is not displayed in FTL page "${Line2_FTLServiceInclusion}".
    Compare Strings   ${FTLServiceInclusions_List}[2]    ${Line3_FTLServiceInclusion}   PASSED :: Line 3 FTL Service Inclusions content is displayed in FTL page.    FAILED :: Line 3 FTL Service Inclusions content is not displayed in FTL page "${Line3_FTLServiceInclusion}".
    Compare Strings   ${FTLServiceInclusions_List}[3]    ${Line4_FTLServiceInclusion}   PASSED :: Line 4 FTL Service Inclusions content is displayed in FTL page.    FAILED :: Line 4 FTL Service Inclusions content is not displayed in FTL page "${Line4_FTLServiceInclusion}".
    Compare Strings   ${FTLServiceInclusions_List}[4]    ${Line5_FTLServiceInclusion}   PASSED :: Line 5 FTL Service Inclusions content is displayed in FTL page.    FAILED :: Line 5 FTL Service Inclusions content is not displayed in FTL page "${Line5_FTLServiceInclusion}".
    Compare Strings   ${FTLServiceInclusions_List}[5]    ${Line6_FTLServiceInclusion}   PASSED :: Line 6 FTL Service Inclusions content is displayed in FTL page.    FAILED :: Line 6 FTL Service Inclusions content is not displayed in FTL page "${Line6_FTLServiceInclusion}".
    Compare Strings   ${FTLServiceInclusions_List}[6]    ${Line7_FTLServiceInclusion}   PASSED :: Line 7 FTL Service Inclusions content is displayed in FTL page.    FAILED :: Line 7 FTL Service Inclusions content is not displayed in FTL page "${Line7_FTLServiceInclusion}".
    Compare Strings   ${FTLServiceInclusions_List}[7]    ${Line8_FTLServiceInclusion}   PASSED :: Line 8 FTL Service Inclusions content is displayed in FTL page.    FAILED :: Line 8 FTL Service Inclusions content is not displayed in FTL page "${Line8_FTLServiceInclusion}".
    Compare Strings   ${FTLServiceInclusions_List}[8]    ${Line9_FTLServiceInclusion}   PASSED :: Line 9 FTL Service Inclusions content is displayed in FTL page.    FAILED :: Line 9 FTL Service Inclusions content is not displayed in FTL page "${Line9_FTLServiceInclusion}".

Validate Part Load Transportation Page Contents
    Mouse Over    ${Services_Link_Locator}
    Validate Element    ${PartLoad_Link_Locator}    PASSED :: Full Truck Load link is displayed in Services.    FAILED :: Full Truck Load link is not displayed in Services.
    Wait And Click      ${PartLoad_Link_Locator}
    Validate Common Features
    ${Title}    Get Title
    Run Keyword If    '${PLTPageTitle}'=='${Title}'   Log To Console   PASSED :: Part Load Transportation page title is displayed correctly.   ELSE    Fail   FAILED :: Part Load Transportation page title should be "${PLTPageTitle}" but it was "${Title}".
    Validate Element    ${PLT_Header_Locator}   PASSED :: Header Part Load Transportation is displayed.    FAILED :: Header Part Load Transportation is not displayed.
    Validate Content    ${Line1_PLT}    PASSED :: Line 1 content is displayed in Part Load Transportation page.    FAILED :: Line 1 content is not displayed in Part Load Transportation page "${Line1_PLT}".
    Validate Content    ${Line2_PLT}    PASSED :: Line 2 content is displayed in Part Load Transportation page.    FAILED :: Line 2 content is not displayed in Part Load Transportation page "${Line2_PLT}".
    Validate Content    ${Line3_PLT}    PASSED :: Line 3 content is displayed in Part Load Transportation page.    FAILED :: Line 3 content is not displayed in Part Load Transportation page "${Line3_PLT}".
    ${ServiceInclusion_Text}    Get Text    ${PLTServiceInclusion_Locator}
    @{PLTServiceInclusions_List}    Split To Lines   ${ServiceInclusion_Text}
    Compare Strings   ${PLTServiceInclusions_List}[0]    ${Line1_PLTServiceInclusion}   PASSED :: Line 1 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 1 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line1_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[1]    ${Line2_PLTServiceInclusion}   PASSED :: Line 2 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 2 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line2_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[2]    ${Line3_PLTServiceInclusion}   PASSED :: Line 3 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 3 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line3_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[3]    ${Line4_PLTServiceInclusion}   PASSED :: Line 4 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 4 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line4_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[4]    ${Line5_PLTServiceInclusion}   PASSED :: Line 5 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 5 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line5_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[5]    ${Line6_PLTServiceInclusion}   PASSED :: Line 6 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 6 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line6_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[6]    ${Line7_PLTServiceInclusion}   PASSED :: Line 7 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 7 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line7_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[7]    ${Line8_PLTServiceInclusion}   PASSED :: Line 8 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 8 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line8_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[8]    ${Line9_PLTServiceInclusion}   PASSED :: Line 9 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 9 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line9_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[9]    ${Line10_PLTServiceInclusion}   PASSED :: Line 10 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 10 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line10_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[10]    ${Line11_PLTServiceInclusion}   PASSED :: Line 11 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 11 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line11_PLTServiceInclusion}".
    Compare Strings   ${PLTServiceInclusions_List}[11]    ${Line12_PLTServiceInclusion}   PASSED :: Line 12 Part Load Transportation service inclusions is displayed in FTL page.    FAILED :: Line 12 Part Load Transportation Service Inclusions is not displayed in FTL page "${Line12_PLTServiceInclusion}".


Compare Strings
    [Arguments]   ${String1}    ${String2}   ${PassMessage}    ${FailMessage}
    Run Keyword If    '${String1}'=='${String2}'   Log To Console    ${PassMessage}   ELSE    Fail    ${FailMessage}

Validate About Us Page Contents
    Wait And Click   ${AboutUs_Link_Locator}
    Validate Element   ${AboutUs_Header_Locator}    PASSED :: Header "ABOUT US" is displayed.    FAILED :: Header "ABOUT US" is not displayed.
    ${Title}    Get Title
    Run Keyword If    '${AboutUsPageTitle}'=='${Title}'   Log To Console   PASSED :: About Us page title is displayed correctly.   ELSE    Fail   FAILED :: About Us page title should be "${AboutUsPageTitle}" but it was "${Title}".
    Validate Common Features
    Validate Content Contains    ${AboutUsTagLine}   PASSED :: Tag line is displayed in About Us page.    FAILED :: Tag line is not displayed in About Us page ${AboutUsTagLine}.
    Validate Content    ${Line1_AboutUs}    PASSED :: Line 1 content is displayed in About Us page.    FAILED :: Line 1 content is not displayed in About Us page "${Line1_AboutUs}".
    Validate Content    ${Line2_AboutUs}    PASSED :: Line 2 content is displayed in About Us page.    FAILED :: Line 2 content is not displayed in About Us page "${Line2_AboutUs}".
    Validate Content    ${Line3_AboutUs}    PASSED :: Line 3 content is displayed in About Us page.    FAILED :: Line 3 content is not displayed in About Us page "${Line3_AboutUs}".
    Validate Content    ${Line4_AboutUs}    PASSED :: Line 4 content is displayed in About Us page.    FAILED :: Line 4 content is not displayed in About Us page "${Line4_AboutUs}".
    Validate Content Contains    ${Line5_AboutUs}    PASSED :: Line 5 content is displayed in About Us page.    FAILED :: Line 5 content is not displayed in About Us page "${Line5_AboutUs}".
    Validate Content    ${Header_FundamentalValues}    PASSED :: Header "Our Fundamental Values" is displayed in About Us page.    FAILED :: Header "Our Fundamental Values" is not displayed in About Us page.
    Validate Element    ${FundamentalValues_Diagram_Locator}   PASSED :: Our Fundamental Values diagram is displayed.    FAILED :: Our Fundamental Values diagram is not displayed.

Validate Home Page Contents
    ${Title}    Get Title
    Run Keyword If    '${HomePageTitle}'=='${Title}'   Log To Console   PASSED :: Home page title is displayed correctly.   ELSE    Fail   FAILED :: Home page title should be "${PageTitle}" but it was "${Title}".
    Validate Content    ${Header_ServicesWeOffer}    PASSED :: Header "SERVICES WE OFFER" is displayed in home page.    FAILED :: Header "SERVICES WE OFFER" is not displayed in home page.
    Validate Content    ${Line1_ServicesWeOffer}    PASSED :: Line 1 content in "SERVICES WE OFFER" is displayed in home page.    FAILED :: Line 1 content in "SERVICES WE OFFER" is not displayed in home page "${Line1_ServicesWeOffer}".
    Validate Content    ${Line2_ServicesWeOffer}    PASSED :: Line 2 content in "SERVICES WE OFFER" is displayed in home page.    FAILED :: Line 2 content in "SERVICES WE OFFER" is not displayed in home page "${Line2_ServicesWeOffer}".
    Validate Content    ${Header_PartLoad}          PASSED :: Header "PART LOAD TRANSPORTATION" is displayed in home page.    FAILED :: Header "PART LOAD TRANSPORTATION" is not displayed in home page.
    Validate Content    ${Line1_PartLoad}          PASSED :: Content for PART LOAD TRANSPORTATION is displayed in home page.    FAILED :: PART LOAD TRANSPORTATION content is not displayed in home page "${Line1_PartLoad}".
    Validate Content    ${Header_FullLoad}          PASSED :: Header "FULL TRUCK LOAD" is displayed in home page.    FAILED :: Header "FULL TRUCK LOAD" is not displayed in home page.
    Validate Content    ${Line1_FullLoad}          PASSED :: Content for FULL TRUCK LOAD is displayed in home page.    FAILED :: Content for FULL TRUCK LOAD is not displayed in home page "${Line1_FullLoad}".
    Validate Content    ${Header_Warehousing}          PASSED :: Header "WAREHOUSING" is displayed in home page.    FAILED :: Header "WAREHOUSING" is not displayed in home page.
    Validate Content    ${Line1_Warehousing}          PASSED :: Content for WAREHOUSING is displayed in home page.    FAILED :: Content for WAREHOUSING is not displayed in home page "${Line1_Warehousing}".
    Validate Content    ${Header_Distribution}          PASSED :: Header "DISTRIBUTION" is displayed in home page.    FAILED :: Header "DISTRIBUTION" is not displayed in home page.
    Validate Content    ${Line1_Distribution}          PASSED :: Content for DISTRIBUTION is displayed in home page.    FAILED :: Content for DISTRIBUTION is not displayed in home page "${Line1_Distribution}".
    Validate Content    ${Text_Branches}          PASSED :: Text "Our Branches" is displayed in home page.    FAILED :: Text "Our Branches" is not displayed in home page.
    Validate Content    ${Number_Branches}          PASSED :: Our Branches number is displayed in home page.    FAILED :: Our Branches number is not displayed in home page "${Number_Branches}".
    Validate Content    ${Text_Area}          PASSED :: Text "Area Occupied In Sq.ft" is displayed in home page.    FAILED :: Text "Area Occupied In Sq.ft" is not displayed in home page.
    Validate Content    ${Number_Area}          PASSED :: Area number is displayed in home page.    FAILED :: Area number is not displayed in home page "${Number_Area}".
    Validate Content    ${Text_Customer}          PASSED :: Text "Customers" is displayed in home page.    FAILED :: Text "Customers" is not displayed in home page.
    Validate Content    ${Number_Customer}          PASSED :: Customers number is displayed in home page.    FAILED :: Customers number is not displayed in home page "${Number_Customer}".
    Validate Content    ${Text_Employees}          PASSED :: Text Employees is displayed in home page.    FAILED :: Text "Employees" not displayed in home page.
    Validate Content    ${Number_Employees}          PASSED :: Employees number is displayed in home page.    FAILED :: Employees number is not displayed in home page "${Number_Employees}".
    Validate Content    ${Header_LatestNews}          PASSED :: Header "LATEST NEWS" is displayed in home page.    FAILED :: Header "LATEST NEWS" is not displayed in home page.
    Validate Content    ${Header_WhyChooseUs}          PASSED :: Header "WHY CHOOSE US" is displayed in home page.    FAILED :: Header "WHY CHOOSE US" is not displayed in home page.
    Validate Content Contains    ${Header_SatisfiedCustomers}          PASSED :: Header "100% Satisfied Customers" is displayed in home page.    FAILED :: Header "100% Satisfied Customers" is not displayed in home page.
    Validate Content Contains    ${Line1_SatisfiedCustomers}          PASSED :: Content for "100% Satisfied Customers" is displayed in home page.    FAILED :: Content for "100% Satisfied Customers" is not displayed in home page "${Line1_SatisfiedCustomers}".
    Validate Content    ${Header_ExperiencedTeam}          PASSED :: Header "Experienced Team" is displayed in home page.    FAILED :: Header "Experienced Team" is not displayed in home page.
    Validate Content Contains    ${Line1_ExperiencedTeam}          PASSED :: Content for "Experienced Team" is displayed in home page.    FAILED :: Content for "Experienced Team" is not displayed in home page "${Line1_ExperiencedTeam}".
    Validate Content    ${Header_Fast&Reliable}          PASSED :: Header "Fast & Reliable" is displayed in home page.    FAILED :: Header "Fast & Reliable:" is not displayed in home page.
    Validate Content Contains    ${Line1_Fast&Reliable}          PASSED :: Content for "Fast & Reliable" is displayed in home page.    FAILED :: Content for Fast & Reliable is not displayed in home page "${Line1_Fast&Reliable}".
    Validate Content    ${Header_CustomLogiSolutions}          PASSED :: Header "Customized logistics solutions" is displayed in home page.    FAILED :: Header "Customized logistics solutions" is not displayed in home page.
    Validate Content Contains    ${Line1_CustomLogiSolutions}          PASSED :: Content for Customized logistics solutions is displayed in home page.    FAILED :: Content for Customized logistics solutions is not displayed in home page "${Line1_CustomLogiSolutions}".
    Validate Content    ${Header_Quality}          PASSED :: Header "Quality & Commitment" is displayed in home page.    FAILED :: Header "Quality & Commitment" is not displayed in home page.
    Validate Content Contains    ${Line1_Quality}          PASSED :: Content for Quality & Commitment is displayed in home page.    FAILED :: Content for Quality & Commitment is not displayed in home page "${Line1_Quality}".
    Validate Content    ${Header_Support}          PASSED :: Header "24/7 Customer Support" is displayed in home page.    FAILED :: Header "24/7 Customer Support" is not displayed in home page.
    Validate Content Contains    ${Line1_Support}          PASSED :: Content for 24/7 Customer Support is displayed in home page.    FAILED :: Content for 24/7 Customer Support is not displayed in home page "${Line1_Support}".
    Validate Content    ${Header_OurClients}          PASSED :: Header "Our Clients" is displayed in home page.    FAILED :: Header "Our Clients" is not displayed in home page.
    Validate Content    ${Header_Testimonial}          PASSED :: Header "Testimonials" is displayed in home page.    FAILED :: Header "Testimonials" is not displayed in home page.

Validate Content
    [Arguments]    ${Content}   ${PassMessage}    ${FailMessage}
    ${Xpath}    Replace Variables    //*[text()='${Content}']
    Wait Until Element Is Visible    ${Xpath}    ${TIMEOUT}    ${FailMessage}
    Scroll To Element   ${Xpath}
    Log To Console      ${PassMessage}

Validate Element
    [Arguments]    ${Locator}   ${PassMessage}    ${FailMessage}    ${TIMEOUT}=${TIMEOUT}
    ${Xpath}    Replace Variables    ${Locator}
    Wait Until Element Is Visible    ${Xpath}    ${TIMEOUT}    ${FailMessage}
    Run Keyword And Ignore Error    Scroll To Element   ${Xpath}
    Log To Console      ${PassMessage}

Validate Content Contains
    [Arguments]    ${Content}   ${PassMessage}    ${FailMessage}
    ${Xpath}    Replace Variables    //*[contains(text(),'${Content}')]
    Wait Until Element Is Visible    ${Xpath}    ${TIMEOUT}    ${FailMessage}
    Scroll To Element   ${Xpath}
    Log To Console      ${PassMessage}

Wait And Input
    [Arguments]   ${Locator}    ${Text}
    Wait Until Element Is Visible    ${Locator}    ${Timeout}
    Input Text    ${Locator}   ${Text}

Wait And Click
    [Arguments]   ${Locator}    ${Timeout}=${TIMEOUT}
    Wait Until Element Is Visible    ${Locator}    ${Timeout}
    Click Element    ${Locator}

Scroll To Element
    [Arguments]    ${xpath}    ${top}=false
    ${xpath1} =    Replace String    ${xpath}    xpath=    ${EMPTY}
    Execute Javascript    document.evaluate("${xpath1}",document,null,    XPathResult.FIRST_ORDERED_NODE_TYPE,null).singleNodeValue.scrollIntoView(${top});
