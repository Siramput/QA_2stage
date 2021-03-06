*** Settings ***
Library					Selenium2Library
Suite Setup
# Suite Teardown		Close All Browsers

*** Variables ***
${url_login}								  https://staging.customer.sendit.asia/th/2stage/login
${admin_username}							test_admin@sendit.asia
${admin_password}							sendit1234
#element login-home page
${url_2stage_activdelivery}		https://staging.customer.sendit.asia/th/2stage/parcels?activeStatusTab=ongoing&currentView
${css_login_modal}						css=div.login-container__loginform___2rEJe
${css_username}								//div[1]/div/div/div/div[1]/input
${css_password}								//div[1]/div/div/div/div[2]/input
${css_loginbtn}								//div[1]/div/div/div/div[3]/button
#Go to Bag Page
${css_ActiveDeliverybtn}          //div/div/div[2]/ul/li[1]/a/i
#Search Set View
${css_SetViewbtn}						//div/div/div[3]/div/div[1]/div[2]/a[2]/span
${css_Customerbtn}					//div/div/div[3]/div/div[1]/div[1]/div[2]/div/span/span
${Customer}									//*[contains(text(),'ADEN')]
${css_startDatebtn}					//div/div/div[3]/div/div[1]/span/div[1]/div[2]/div/div[1]/div[1]
${backDatebtn}							//div/div/div[3]/div/div[1]/span/div[1]/div[2]/div/div[2]/div/div/div[2]/div[1]/button[1]
${preDatebtn}								//div/div/div[3]/div/div[1]/span/div[1]/div[2]/div/div[2]/div/div/div[2]/div[1]/button[2]
# ${startDate}								//div/div/div[3]/div/div[1]/span/div[1]/div[2]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/table/tbody/tr[4]/td[2]/button
${startDate}								//div/div/div[3]/div/div[1]/span/div[1]/div[2]/div/div[2]/div/div/div[2]/div[2]/div/div[2]/table/tbody/tr[2]/td[1]/button
${LastDate}									//div/div/div[3]/div/div[1]/span/div[1]/div[2]/div/div[2]/div/div/div[2]/div[2]/div/div[3]/table/tbody/tr[4]/td[4]/button
${css_ParcelSizebtn}				//div/div/div[3]/div/div[1]/span/div[2]/div[2]/div/span/span
${ParcelSize}								//*[contains(text(),'SATCHEL')]
${css_Statusbtn}						//div/div/div[3]/div/div[1]/span/div[3]/div[2]/div/span/span
${Status}										//*[contains(text(),'READY')]
${css_Bagbtn}								//div/div/div[3]/div/div[1]/span/div[4]/div[2]/div/span/span
${Bag}											//*[contains(text(),'ACOM')]
${css_PickupShopCodebtn}		//div/div/div[3]/div/div[1]/span/div[5]/div[2]/div/span/span
${PickupShopCode}						//*[contains(text(),'05878')]
${css_DeliveryShopCode}			//div/div/div[3]/div/div[1]/span/div[6]/div[2]/div/span/span
${DeliveryShopCode}					//*[contains(text(),'')]

#Search Status View
${css_StatusViewbtn}				//div/div/div[3]/div/div[1]/div[2]/a[1]/span
${css_OnGoingbtn}						//div/div/div[3]/div/div[1]/div[1]/div[2]/button[1]/span
${css_Historybtn}						//div/div/div[3]/div/div[1]/div[1]/div[2]/button[2]/span
${css_Customerbtn2}					//div/div/div[3]/div/div[1]/div[2]/div[2]/div/span/span
${css_Statusbtn2}						//div/div/div[3]/div/div[1]/span/div[2]/div[2]/div/span/span

${css_REFRESHbtn}					css=.sendicon-icon-sync

#Action
${css_Actionbtn}								//div/div/div[3]/div/div[1]/div[2]/a[4]/i
${css_Exportbtn}								//div/div/div[3]/div/div[1]/div[2]/ul/li[1]/a/span
${css_Opennewtapbtn}						//div/div/div[3]/div/div[1]/div[2]/ul/li[2]/a/span
${css_Customizecolumnsbtn}			//div/div/div[3]/div/div[1]/div[2]/ul/li[3]/a/span


${css_Viewclicklinkbtn}			//div/div/div[3]/div/div[4]/table/tbody/tr[1]/td[2]/a


#${css_Set569btn}			//div/div/div[3]/div/div[2]/div[9]
${css_Set569btn}								//div/div/div[3]/div/div[2]/div[1]


#Customizecolumns
${css_ParcelGroupbtn}						//div/div/div[3]/div/div[5]/div/div[1]/div[1]/label[3]/input
${css_Savebtn}									//div/div/div[3]/div/div[5]/div/div[2]/button
${css_Xbtn}											//div/div/div[3]/div/div[5]/div/button/i



#edit
${css_editbtn}									//div/div/div[3]/div/div[4]/table/tbody/tr[1]/td[16]/button/i
${css_edit1btn}									//div/div/div[3]/div/div[5]/div/div[2]/div[2]/i
${css_edit1Statusbtn}						//div/div/div[3]/div/div[5]/div/div[2]/div[2]/div[1]/div[1]/div/div/span/span
${edit1Status}									//*[contains(text(),'READY_TO_PICK_UP')]
${css_edit1inputnote}									//div/div/div[3]/div/div[5]/div/div[2]/div[2]/div[1]/div[2]/input
${edit1inputnote}											test
${css_edit1Savebtn}									//div/div/div[3]/div/div[5]/div/div[2]/div[2]/div[2]/div/button[1]

${css_editSenderbtn}						//div/div/div[4]/div/div[5]/div/div[2]/table[1]/tbody/tr[1]/td/i


${css_editSenderAddress}					//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[1]/div[1]/textarea
${editSenderAddress}							10/0095 Soi Sukhumvit 13 (Sang Chan), Khlong Toei Nuea, Watthana, Bangkok 10110, Bangkok
${css_editSenderNote}							//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[1]/div[2]/textarea
${editSenderNote}									Test
# ${css_editSenderCity}							//div/div/div[3]/div/div[5]/div/div[2]/div[3]/div[2]/div[1]/div/div/div[1]
# ${editSenderCity}									อ่างทอง
${css_editSenderSavebtn} 							//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[3]/div/button[1]
${css_editSenderCanclebtn} 						//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[3]/div/button[2]


${css_editRECIPIENTbtn}								//div/div/div[4]/div/div[5]/div/div[2]/table[2]/tbody/tr[1]/td/i
${css_editRECIPIENTName}							//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[1]/div[1]/input
${css_RECIPIENTName}									คุณบรรณสิทธิ์ ปานฝึกดีมาก
${css_editRECIPIENTPhone}							//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[1]/div[2]/input
${css_RECIPIENTPhone}									0998453229
${css_editRECIPIENTAddress}						//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[2]/div[1]/div[1]/textarea
${css_RECIPIENTAddress}								144 ถนนวงแหวนรอบ 2 ตำบลสันกลาง อำเภอสันกำแพง เชียงใหม่ 50130, เชียงใหม่
${css_editRECIPIENTNote}							//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[2]/div[1]/div[2]/textarea
${css_RECIPIENTNote}									Test
${css_editRECIPIENTCitybtn}						//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[2]/div[2]/div[1]/div/div/span/span
${css_RECIPIENTCity}									//*[contains(text(),'ชลบุรี')]
${css_editRECIPIENTPostcodebtn}				//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[2]/div[2]/div[2]/div/div/span/span
${css_RECIPIENTPostcode}							//*[contains(text(),'20000')]
${css_editRECIPIENTDistrictbtn}				//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[2]/div[2]/div[3]/div/div/span/span
${css_RECIPIENTDistrict}							//*[contains(text(),'เมือง')]
${css_editRECIPIENTSub-Districtbtn}		//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[2]/div[2]/div[4]/div/div/span/span
${css_RECIPIENTSub-District}					//*[contains(text(),'เมือง')]
${css_editRECIPIENTSavebtn} 					//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[3]/div/button[1]
${css_editRECIPIENTCanclebtn} 				//div/div/div[4]/div/div[5]/div/div[2]/div[3]/div[3]/div/button[2]


${css_Searchbtn} 				//div/div/div[3]/div/div[3]/table/tbody/tr/td[1]/input


*** Keywords ***
Login to 2Stage by		    [Arguments]			${username}					${password}
	Open Browser							              ${url_login}					chrome
	Maximize Browser Window
	Element Should Be Visible				        ${css_login_modal}				5s
	Input Text								              ${css_username}					${username}
	Input Text							               	${css_password}					${password}
	Sleep  3s
	Click element  							            ${css_loginbtn}
	Sleep  1s

Go to Active Delivery page
	Wait Until Element Is Visible 			    ${css_ActiveDeliverybtn}  		5s
	Click element    						            ${css_ActiveDeliverybtn}

search by Status View OnGoing
	Wait Until Element Is Visible 			    ${css_StatusViewbtn}	  		5s
	Click element    						            ${css_StatusViewbtn}
	Sleep    5S
	Wait Until Element Is Visible 			    ${css_OnGoingbtn}	  		5s
	Click element    						            ${css_OnGoingbtn}
	Sleep    5S

	Wait Until Element Is Visible 			    ${css_REFRESHbtn}			  		5s
	Click element    						            ${css_REFRESHbtn}


search by Status View History
		Wait Until Element Is Visible 			    ${css_StatusViewbtn}	  		5s
		Click element    						            ${css_StatusViewbtn}
		Sleep    5S

		Wait Until Element Is Visible 			    ${css_Historybtn}	  		5s
		Click element    						            ${css_Historybtn}
		Sleep    5S

		Wait Until Element Is Visible 			    ${css_Customerbtn2}	  		5s
		Click element    						            ${css_Customerbtn2}
		Wait Until Element Is Visible 			    ${Customer}	  		5s
		Click element    						            ${Customer}
		Wait Until Element Is Visible 			    ${css_startDatebtn}		  		5s
		Click element    						            ${css_startDatebtn}
		Wait Until Element Is Visible 			    ${backDatebtn}		  		5s
		Click element    						            ${backDatebtn}
		Sleep    10s
		Wait Until Element Is Visible 			    ${startDate}		  		5s
		Click element    						            ${startDate}
		Wait Until Element Is Visible 			    ${LastDate}		  		5s
		Click element    						            ${LastDate}
		Wait Until Element Is Visible 			    ${css_Statusbtn2}			  		5s
		Click element    						            ${css_Statusbtn2}
		Wait Until Element Is Visible 			    ${Status}			  		5s
		Click element    						            ${Status}
		Wait Until Element Is Visible 			    ${css_REFRESHbtn}			  		5s
		Click element    						            ${css_REFRESHbtn}


search by Set View
	Wait Until Element Is Visible 			    ${css_SetViewbtn}	  		5s
	Click element    						            ${css_SetViewbtn}
	Wait Until Element Is Visible 			    ${css_Customerbtn}	  		5s
	Click element    						            ${css_Customerbtn}
	Wait Until Element Is Visible 			    ${Customer}	  		5s
	Click element    						            ${Customer}
	Wait Until Element Is Visible 			    ${css_startDatebtn}		  		5s
	Click element    						            ${css_startDatebtn}
	Sleep    10s
	Wait Until Element Is Visible 			    ${backDatebtn}		  		5s
	Click element    						            ${backDatebtn}
	Sleep    10s
	Wait Until Element Is Visible 			    ${startDate}		  		5s
	Click element    						            ${startDate}
	Sleep    10s
	Wait Until Element Is Visible 			    ${LastDate}		  		5s
	Click element    						            ${LastDate}
	# Wait Until Element Is Visible 			    ${css_ParcelSizebtn}		  		5s
	# Click element    						            ${css_ParcelSizebtn}
	# Wait Until Element Is Visible 			    ${ParcelSize}			  		5s
	# Click element    						            ${ParcelSize}
	# Wait Until Element Is Visible 			    ${css_Statusbtn}			  		5s
	# Click element    						            ${css_Statusbtn}
	# Wait Until Element Is Visible 			    ${Status}			  		5s
	# Click element    						            ${Status}
	# Wait Until Element Is Visible 			    ${css_Bagbtn}		  		5s
	# Click element    						            ${css_Bagbtn}
	# Wait Until Element Is Visible 			    ${Bag}		  		5s
	# Click element    						            ${Bag}

	Wait Until Element Is Visible 			    ${css_Set569btn}		  		5s
	Click element    						            ${css_Set569btn}
	Sleep    10s
	Wait Until Element Is Visible 			    ${css_REFRESHbtn}			  		5s
	Click element    						            ${css_REFRESHbtn}

Filter by Customer
	Wait Until Element Is Visible 			    ${css_SetViewbtn}	  		5s
	Click element    						            ${css_SetViewbtn}
	Wait Until Element Is Visible 			    ${css_Customerbtn}	  		5s
	Click element    						            ${css_Customerbtn}
	Wait Until Element Is Visible 			    ${Customer}	  		5s
	Click element    						            ${Customer}

Filter by Date Range
	Wait Until Element Is Visible 			    ${css_SetViewbtn}	  		5s
	Click element    						            ${css_SetViewbtn}

	Wait Until Element Is Visible 			    ${css_startDatebtn}		  		5s
	Click element    						            ${css_startDatebtn}
	Sleep    5s
	Wait Until Element Is Visible 			    ${backDatebtn}		  		5s
	Click element    						            ${backDatebtn}
	Sleep    5s
	Wait Until Element Is Visible 			    ${backDatebtn}		  		5s
	Click element    						            ${backDatebtn}
	Sleep    5s
	Wait Until Element Is Visible 			    ${backDatebtn}		  		5s
	Click element    						            ${backDatebtn}
	Sleep    5s
	Wait Until Element Is Visible 			    ${startDate}		  		5s
	Click element    						            ${startDate}
	Sleep    5s

	Wait Until Element Is Visible 			    ${preDatebtn}		  		5s
	Click element    						            ${preDatebtn}
	Sleep    5s
	Wait Until Element Is Visible 			    ${preDatebtn}		  		5s
	Click element    						            ${preDatebtn}
	Sleep    5s
	Wait Until Element Is Visible 			    ${LastDate}		  		5s
	Click element    						            ${LastDate}

Filter by Parcel Size
	Wait Until Element Is Visible 			    ${css_ParcelSizebtn}		  		5s
	Click element    						            ${css_ParcelSizebtn}
	Wait Until Element Is Visible 			    ${ParcelSize}			  		5s
	Click element    						            ${ParcelSize}

Filter by Status
	Wait Until Element Is Visible 			    ${css_Statusbtn}			  		5s
	Click element    						            ${css_Statusbtn}
	Wait Until Element Is Visible 			    ${Status}			  		5s
	Click element    						            ${Status}

Filter by Bag
	Wait Until Element Is Visible 			    ${css_Bagbtn}		  		5s
	Click element    						            ${css_Bagbtn}
	Wait Until Element Is Visible 			    ${Bag}		  		5s
	Click element    						            ${Bag}

Filter by Pick up Shop Code
	Wait Until Element Is Visible 			    ${css_PickupShopCodebtn}		  		5s
	Click element    						            ${css_PickupShopCodebtn}
	Wait Until Element Is Visible 			    ${PickupShopCode}		  		5s
	Click element    						            ${PickupShopCode}

Filter by Delivery Shop Code
	Until Element Is Visible 			    			${css_DeliveryShopCode}		  		5s
	Click element    						            ${css_DeliveryShopCode}
	Wait Until Element Is Visible 			    ${DeliveryShopCode}		  		5s
	Click element    						            ${DeliveryShopCode}


Action
		Wait Until Element Is Visible 			    ${css_Actionbtn}	  		5s
		Click element    						            ${css_Actionbtn}

Export
	Wait Until Element Is Visible 			    ${css_Exportbtn}	  		5s
	Click element    						            ${css_Exportbtn}

Open new tap
	Wait Until Element Is Visible 			    ${css_Opennewtapbtn}	  		5s
	Click element    						            ${css_Opennewtapbtn}

Customize columns
	Wait Until Element Is Visible 			    ${css_Customizecolumnsbtn}	  		5s
	Click element    						            ${css_Customizecolumnsbtn}
	Wait Until Element Is Visible 			    ${css_ParcelGroupbtn}	  		5s
	Click element    						            ${css_ParcelGroupbtn}
	Wait Until Element Is Visible 			    ${css_Savebtn}	  		5s
	Click element    						            ${css_Savebtn}


	Wait Until Element Is Visible 			    ${css_Actionbtn}	  		5s
	Click element    						            ${css_Actionbtn}

	Wait Until Element Is Visible 			    ${css_Customizecolumnsbtn}	  		5s
	Click element    						            ${css_Customizecolumnsbtn}
	Wait Until Element Is Visible 			    ${css_ParcelGroupbtn}	  		5s
	Click element    						            ${css_ParcelGroupbtn}
	Wait Until Element Is Visible 			    ${css_Xbtn}	  		5s
	Click element    						            ${css_Xbtn}

View click link
		Wait Until Element Is Visible 			    ${css_Viewclicklinkbtn}		  		5s
		Click element  													${css_Viewclicklinkbtn}
		Sleep    5s

Search
		Wait Until Element Is Visible 			    ${css_Searchbtn}		5s
		Click element  													${css_Searchbtn}
		Input Text    													${css_Searchbtn}		    LUN00030



Edit
		Wait Until Element Is Visible 			    ${css_editbtn}		  		5s
		Click element  													${css_editbtn}

Edit 1
		Wait Until Element Is Visible 			    ${css_edit1btn}		  		5s
		Click element  													${css_edit1btn}
		Wait Until Element Is Visible 			    ${css_edit1St atusbtn}		  		5s
		Click element  													${css_edit1Statusbtn}
		# Wait Until Element Is Visible 			    ${edit1Status}			  		5s
		# Sleep    3s
		# Click element  													${edit1Status}
		Wait Until Element Is Visible 			    ${css_edit1inputnote}		  		5s
		Click element  													${css_edit1inputnote}
		Input Text                              ${css_edit1inputnote}   ${edit1inputnote}
		Wait Until Element Is Visible 			    ${css_edit1Savebtn}			  		5s
		Click element  													${css_edit1Savebtn}

Edit SENDER
		Wait Until Element Is Visible 			    ${css_editSenderbtn}			  		5s
		Click element  													${css_editSenderbtn}
		Sleep    5s
		Wait Until Element Is Visible 			    ${css_editSenderAddress}		  		5s
		Click element  													${css_editSenderAddress}
		Input Text    													${css_editSenderAddress}				${editSenderAddress}
		Wait Until Element Is Visible 			    ${css_editSenderNote}			  		5s
		Sleep    5s
		Click element  													${css_editSenderNote}
		Sleep    5s
		Input Text  														${css_editSenderNote}			    ${editSenderNote}
		# Wait Until Element Is Visible 			    ${css_editSenderCity}			  		5s
		# Click element  													${css_editSenderCity}
		# Input Text    													${css_editSenderCity}			    ${editSenderCity}
		Sleep    5s
		Wait Until Element Is Visible 			    ${css_editSenderSavebtn}			  		5s
		Click element  													${css_editSenderSavebtn}
		Sleep    5s
		Wait Until Element Is Visible 			    ${css_editSenderbtn}			  		5s
		Click element  													${css_editSenderbtn}
		Sleep    5s
		Wait Until Element Is Visible 			    ${css_editSenderAddress}		  		5s
		Click element  													${css_editSenderAddress}
		Input Text    													${css_editSenderAddress}				${editSenderAddress}
		Wait Until Element Is Visible 			    ${css_editSenderNote}			  		5s
		Click element  													${css_editSenderNote}
		Input Text  														${css_editSenderNote}			    ${editSenderNote}
		# Wait Until Element Is Visible 			    ${css_editSenderCity}			  		5s
		# Click element  													${css_editSenderCity}
		# Input Text    													${css_editSenderCity}			    ${editSenderCity}

		Wait Until Element Is Visible 			    ${css_editSenderCanclebtn}			  		5s
		Click element  													${css_editSenderCanclebtn}

Edit RECIPIENT
	Wait Until Element Is Visible 			    ${css_editRECIPIENTbtn}			  		5s
	Click element  													${css_editRECIPIENTbtn}
	Wait Until Element Is Visible 			    ${css_editRECIPIENTName}			  		5s
	Click element  													${css_editRECIPIENTName}
	Input Text    													${css_editRECIPIENTName}						${css_RECIPIENTName}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_editRECIPIENTPhone}				  		5s
	Click element  													${css_editRECIPIENTPhone}
	Input Text    													${css_editRECIPIENTPhone}						${css_RECIPIENTPhone}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_editRECIPIENTAddress}				  		5s
	Click element  													${css_editRECIPIENTAddress}
	Input Text    													${css_editRECIPIENTAddress}						${css_RECIPIENTAddress}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_editRECIPIENTNote}				  		5s
	Click element  													${css_editRECIPIENTNote}
	Input Text    													${css_editRECIPIENTNote}					${css_RECIPIENTNote}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_editRECIPIENTCitybtn}					  		5s
	Click element  													${css_editRECIPIENTCitybtn}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_RECIPIENTCity}				  		5s
	Click element  													${css_RECIPIENTCity}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_editRECIPIENTPostcodebtn}					  		5s
	Click element  													${css_editRECIPIENTPostcodebtn}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_RECIPIENTPostcode}				  		5s
	Click element  													${css_RECIPIENTPostcode}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_editRECIPIENTDistrictbtn}				  		5s
	Click element  													${css_editRECIPIENTDistrictbtn}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_RECIPIENTDistrict}				  		5s
	Click element  													${css_RECIPIENTDistrict}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_editRECIPIENTSub-Districtbtn}				  		5s
	Click element  													${css_editRECIPIENTSub-Districtbtn}
	Sleep    3s
	Wait Until Element Is Visible 			    ${css_RECIPIENTSub-District}				  		5s
	Click element  													${css_RECIPIENTSub-District}
	Wait Until Element Is Visible 			    ${css_editRECIPIENTSavebtn} 				  		5s
	Click element  													${css_editRECIPIENTSavebtn}

*** Test Cases ***
# 2Stage website Active Delivery search by Set View
#       Login to 2Stage by						${admin_username}				${admin_password}
#       Go to Active Delivery page
# 			search by Set View
#
# 2Stage website Active Delivery search by Status View History
# 			Login to 2Stage by						${admin_username}				${admin_password}
# 			Go to Active Delivery page
# 			search by Status View History
#
# 2Stage website Active Delivery search by Status View OnGoing
# 			Login to 2Stage by						${admin_username}				${admin_password}
# 			Go to Active Delivery page
# 			search by Status View OnGoing
#
# 2Stage website Active Delivery search by Status View // Filter by Customer (ADEN)
# 			Login to 2Stage by						${admin_username}				${admin_password}
# 			Go to Active Delivery page
# 			Filter by Customer

# 2Stage website Active Delivery search by Status View // Filter by Date Range (08-04-2018 to 25-07-2018)
# 				Login to 2Stage by						${admin_username}				${admin_password}
# 				Go to Active Delivery page
# 				Filter by Date Range

# 2Stage website Active Delivery search by Status View // Filter by Parcel Size (SATCHEL)
# 				Login to 2Stage by						${admin_username}				${admin_password}
# 				Go to Active Delivery page
# 				Filter by Date Range
# 				Filter by Parcel Size

# 2Stage website Active Delivery search by Status View // Filter by Status (READY To PICK UP)
# 				Login to 2Stage by						${admin_username}				${admin_password}
# 				Go to Active Delivery page
# 				Filter by Status


# 2Stage website Active Delivery search by Status View // Filter by Bag (ACOM)
# 				Login to 2Stage by						${admin_username}				${admin_password}
# 				Go to Active Delivery page
# 				Filter by Date Range
# 				Filter by Bag

# 2Stage website Active Delivery search by Status View //Filter by Pick up Shop Code
# 				Login to 2Stage by						${admin_username}				${admin_password}
# 				Go to Active Delivery page
# 				Filter by Date Range
# 				Filter by Pick up Shop Code

# 2Stage website Active Delivery search by Status View //Filter by Delivery Shop Code
# 				Login to 2Stage by						${admin_username}				${admin_password}
# 				Go to Active Delivery page
# 				Filter by Date Range
# 				Filter by Delivery Shop Code


# 2Stage website Active Delivery : Action Menu //Export this filter to excel file
# 						Login to 2Stage by						${admin_username}				${admin_password}
# 						Go to Active Delivery page
# 						Filter by Date Range
# 						Action
# 						Export
#
# 2Stage website Active Delivery : Action Menu //Open new tap
# 						Login to 2Stage by						${admin_username}				${admin_password}
# 					  Go to Active Delivery page
# 						Filter by Date Range
# 						Action
# 						Open new tap
#
# 2Stage website Active Delivery : Action Menu //Customize columns
# 						Login to 2Stage by						${admin_username}				${admin_password}
# 						Go to Active Delivery page
# 						Filter by Date Range
# 						Action
# 						Customize columns
#
# 2Stage website Active Delivery : Action Menu //View click link
# 						Login to 2Stage by						${admin_username}				${admin_password}
# 						Go to Active Delivery page
# 						Filter by Date Range
# 						Action
# 						View click link

2Stage website Active Delivery : Search Consignment
						Login to 2Stage by						${admin_username}				${admin_password}
						Go to Active Delivery page
						Filter by Date Range
						Search


# 2Stage website Active Delivery : Edit
# 						Login to 2Stage by						${admin_username}				${admin_password}
# 						Go to Active Delivery page
# 						search by Status View
# 						Sleep    5s
# 						Edit
# 						Sleep    5s
# 						Edit 1
# 						Edit SENDER
# 						Edit RECIPIENT
