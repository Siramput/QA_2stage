*** Settings ***
Library					Selenium2Library
Suite Setup
Suite Teardown		Close All Browsers


*** Variables ***
${url_login}								https://staging.customer.sendit.asia/th/2stage/login
${admin_username}							test_admin@sendit.asia
${admin_password}							sendit1234
#element login-home page
${url_2stage_activdelivery}					https://staging.customer.sendit.asia/th/2stage/parcels?activeStatusTab=ongoing&currentView
${css_login_modal}							css=div.login-container__loginform___2rEJe
${css_username}								//div[1]/div/div/div/div[1]/input
${css_password}								//div[1]/div/div/div/div[2]/input
${css_loginbtn}								//div[1]/div/div/div/div[3]/button
#Go to Location Management Page
${css_LocationManagementbtn}				//div/div/div[2]/ul/li[11]/a/i
${css_inputSearchLocationManagement}		//div/div/div[3]/div/div[1]/div/input
${css_WAREHOUSEbtn}								//*[contains(text(),'WAREHOUSE')]


#SearchByStatus
${css_Statusbtn}                            //div/div/div[3]/div/div[2]/div/div[1]/div/div/span/span
${css_StatusAllbtn}                         //*[contains(text(),'ALL')]
${css_StatusActivebtn}                      //*[contains(text(),'ACTIVE')]
${css_Statusinactivebtn}                    //*[contains(text(),'INACTIVE')]
${css_inputSearch}                          //div/div/div[1]/div/div[1]



#Create
${css_CreateNewbtn}							//div/div/div[3]/div/div[2]/div/div[2]/button
#input data Create
${css_inputWAREHOUSEName}							//div/div/div[3]/div/div[3]/div/div[1]/input
${css_inputWAREHOUSEAddress}						//div/div/div[3]/div/div[3]/div/div[2]/textarea




#Data For test Create
${WAREHOUSEName}								WAREHOUSE RICHMOND
${WAREHOUSEAddress}								Richmond Office Building Soi Sukhumvit 26 Khwaeng Khongton Khet Khongtei Bangkok 10110 (Test Create)


#Data For test Edit
${WAREHOUSENameEdit}							WAREHOUSE RICHMOND
${WAREHOUSEAddressEdit}							Richmond Office Building Soi Sukhumvit 26 Khwaeng Khongton Khet Khongtei Bangkok 10110 (Test Edit)


${css_CreateSAVEbtn}						//div/div/div[3]/div/div[3]/div/div[3]/button[1]
${css_CreateCANCLEbtn}						//div/div/div[3]/div/div[3]/div/div[3]/button[2]/span


${css_SelecetWAREHOUSEForEdit}				//*[contains(text(),'WAREHOUSE RICHMOND')]
${css_Editbtn}								//div/div/div[3]/div/div[3]/div/button
${css_EditDisable_Enablebtn}				//div/div/div[3]/div/div[3]/div/div[3]/div/div[2]



*** Keywords ***
Login to 2Stage by		[Arguments]			${username}					${password}
	Open Browser							${url_login}					chrome
	Maximize Browser Window
	Element Should Be Visible				${css_login_modal}				10s
	Input Text								${css_username}					${username}
	Input Text								${css_password}					${password}
	Sleep  3s
	Click element  							${css_loginbtn}
	Sleep  1s
Go to Location Management page
	Wait Until Element Is Visible 			${css_LocationManagementbtn}		5s
	Click element    						${css_LocationManagementbtn}

select WAREHOUSE
	Wait Until Element Is Visible 			${css_inputSearchLocationManagement}		5s
	Click element    						${css_inputSearchLocationManagement}
	Wait Until Element Is Visible 			${css_WAREHOUSEbtn}		5s
	Click element    						${css_WAREHOUSEbtn}






Create
	Wait Until Element Is Visible 			${css_CreateNewbtn}				5s
	Click element    										${css_CreateNewbtn}

Create Input Data
	#WAREHOUSEName
	Wait Until Element Is Visible 			${css_inputWAREHOUSEName}					5s
	Click element    										${css_inputWAREHOUSEName}
	Input Text 													${css_inputWAREHOUSEName}					${WAREHOUSEName}
	#WAREHOUSEAddress
	Wait Until Element Is Visible 			${css_inputWAREHOUSEAddress}			5s
	Click element    										${css_inputWAREHOUSEAddress}
	Input Text 													${css_inputWAREHOUSEAddress}			${WAREHOUSEAddress}







select WAREHOUSE for edit
	Wait Until Element Is Visible 			${css_SelecetWAREHOUSEForEdit}		5s
	Click Element												${css_SelecetWAREHOUSEForEdit}
	Wait Until Element Is Visible 			${css_Editbtn}						5s
	Click Element 											${css_Editbtn}


Edit Input Data
	#WAREHOUSEName
	Wait Until Element Is Visible 			${css_inputWAREHOUSEName}		5s
	Click element    										${css_inputWAREHOUSEName}
	Input Text 													${css_inputWAREHOUSEName}			${WAREHOUSENameEdit}
	#WAREHOUSEAddress
	Wait Until Element Is Visible 			${css_inputWAREHOUSEAddress}		5s
	Click element    										${css_inputWAREHOUSEAddress}
	Input Text 													${css_inputWAREHOUSEAddress}			${WAREHOUSEAddressEdit}


Edit disable
	Wait Until Element Is Visible 			${css_EditDisable_Enablebtn}		5s
	Click Element 											${css_EditDisable_Enablebtn}
Edit enable
	Wait Until Element Is Visible 			${css_EditDisable_Enablebtn}		5s
	Click Element 											${css_EditDisable_Enablebtn}





CANCLE btn
	Wait Until Element Is Visible 			${css_CreateCANCLEbtn}		5s
	Click element    										${css_CreateCANCLEbtn}
SAVE btn
	Wait Until Element Is Visible 			${css_CreateSAVEbtn}		5s
	Click element    										${css_CreateSAVEbtn}





Search Location Management
	Wait Until Element Is Visible 			${css_WAREHOUSEbtn}		5s
	Click element    										${css_WAREHOUSEbtn}

Search Location Management WAREHOUSE Status All
	Wait Until Element Is Visible 			${css_Statusbtn}			5s
	Click element    										${css_Statusbtn}
	Wait Until Element Is Visible 			${css_StatusAllbtn}		5s
	Click element    										${css_StatusAllbtn}
	Wait Until Element Is Visible 			${css_inputSearch}		5s
	Click element    										${css_inputSearch}

Search Location Management WAREHOUSE Status Active
	Wait Until Element Is Visible 			${css_Statusbtn}					5s
	Click element    										${css_Statusbtn}
	Wait Until Element Is Visible 			${css_StatusActivebtn}		5s
	Click element    										${css_StatusActivebtn}

Search Location Management WAREHOUSE Status Inactive
	Wait Until Element Is Visible 			${css_Statusbtn}						5s
	Click element    										${css_Statusbtn}
	Wait Until Element Is Visible 			${css_Statusinactivebtn}		5s
	Click element    										${css_Statusinactivebtn}














*** Test Cases ***
# 2Stage website Create CANCLE btn
# 	Login to 2Stage by						${admin_username}				${admin_password}
# 	Go to Location Management page
# 	select WAREHOUSE
# 	Create
# 	Create Input Data
# 	CANCLE btn

# 2Stage website Create SAVE btn
# 	Login to 2Stage by						${admin_username}				${admin_password}
# 	Go to Location Management page
# 	select WAREHOUSE
# 	Create
# 	Create Input Data
# 	SAVE btn


# 2Stage website Search WAREHOUSE all
# 	Login to 2Stage by						${admin_username}		${admin_password}
# 	Go to Location Management page
# 	Search Location Management
# 	Search Location Management WAREHOUSE Status All

# 2Stage website Search WAREHOUSE Active
# 	Login to 2Stage by						${admin_username}		${admin_password}
# 	Go to Location Management page
# 	Search Location Management
# 	Search Location Management WAREHOUSE Status Active

# 2Stage website Search WAREHOUSE Inactive
# 	Login to 2Stage by						${admin_username}		${admin_password}
# 	Go to Location Management page
# 	Search Location Management
# 	Search Location Management WAREHOUSE Status Inactive

# 2Stage website Edit CANCLE btn
# 	Login to 2Stage by						${admin_username}				${admin_password}
# 	Go to Location Management page
# 	select WAREHOUSE
# 	select WAREHOUSE for edit
# 	Edit Input Data
# 	CANCLE btn

# 2Stage website Edit SAVE btn
# 	Login to 2Stage by						${admin_username}				${admin_password}
# 	Go to Location Management page
# 	select WAREHOUSE
# 	select WAREHOUSE for edit
# 	Edit Input Data
# 	SAVE btn

2Stage website Edit CANCLE
	Login to 2Stage by						${admin_username}				${admin_password}
	Go to Location Management page
	select WAREHOUSE
	select WAREHOUSE for edit
	Edit disable
	CANCLE btn

2Stage website Edit SAVE
	Login to 2Stage by						${admin_username}				${admin_password}
	Go to Location Management page
	select WAREHOUSE
	select WAREHOUSE for edit
	Edit enable
	SAVE btn
