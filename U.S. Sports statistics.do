*****Project for Dr. Alexandra on U.S. sport teams


use "/Users/abusung/Documents/sport/Pro Work.dta", clear
egen CityID = group(City)
drop TeamID



keep   RTicket Year  City  CityID Team Sport 


save "/Users/abusung/Documents/sport/loop.dta", replace



forvalues x = 1/51 {
use "/Users/abusung/Documents/sport/loop.dta", clear
keep if CityID ==`x'
egen TeamID = group(Team) if Sport==1
egen   TeamID2 = group(Team) if Sport==2
egen   TeamID3 = group(Team) if Sport==3
egen   TeamID4 = group(Team) if Sport==4

replace TeamID= TeamID2 if TeamID==.
replace TeamID= TeamID3 if TeamID==.
replace TeamID= TeamID4 if TeamID==.

drop TeamID2 TeamID3 TeamID4

gen ID= Sport*10+TeamID

reshape wide  RTicket  , i( City Year Sport Team) j(ID )

gen ID= Sport*10+TeamID


drop TeamID


egen TeamID = group(Team)


save "/Users/abusung/Documents/sport/RTicket_`x'.dta", replace

}


****For New York (CityID=29)*************************


use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if  ID ==11
keep RTicket11 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_1.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==12
keep RTicket12 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_2.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==21
keep RTicket21 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_3.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==22
keep RTicket22 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_4.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==31
keep RTicket31 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_5.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==32
keep RTicket32 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_6.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==41
keep RTicket41 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_7.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==42
keep RTicket42 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_8.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==43
keep RTicket43 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_9.dta", replace

forvalues x =2/9{
use "/Users/abusung/Documents/sport/R_29_1.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_1.dta", replace
}


forvalues x =1/9{
use "/Users/abusung/Documents/sport/R_29_2.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_2.dta", replace
}



forvalues x =1/9{
use "/Users/abusung/Documents/sport/R_29_3.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_3.dta", replace
}


forvalues x =1/9{
use "/Users/abusung/Documents/sport/R_29_4.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_4.dta", replace
}


forvalues x =1/9{
use "/Users/abusung/Documents/sport/R_29_5.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_5.dta", replace
}


forvalues x =1/9{
use "/Users/abusung/Documents/sport/R_29_6.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_6.dta", replace
}



forvalues x =1/9{
use "/Users/abusung/Documents/sport/R_29_7.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_7.dta", replace
}

forvalues x =1/9{
use "/Users/abusung/Documents/sport/R_29_8.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_8.dta", replace
}

forvalues x =1/9{
use "/Users/abusung/Documents/sport/R_29_9.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_9.dta", replace
}


forvalues x =1/9{
use "/Users/abusung/Documents/sport/R_29_1.dta", clear

append using "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_1.dta", replace
}




save "/Users/abusung/Documents/sport/29.dta", replace
 


********************************************** END **********************






****For LA (CityID=21)*************************

use "/Users/abusung/Documents/sport/RTicket_21.dta", clear
save "/Users/abusung/Documents/sport/RTicket_29.dta", replace
keep if  ID ==11
keep RTicket11 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_1.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==12
keep RTicket12 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_2.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==21
keep RTicket21 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_3.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==22
keep RTicket22 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_4.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==31
keep RTicket31 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_5.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==32
keep RTicket32 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_6.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==41
keep RTicket41 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_7.dta", replace

forvalues x =2/7{
use "/Users/abusung/Documents/sport/R_29_1.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_1.dta", replace
}


forvalues x =1/7{
use "/Users/abusung/Documents/sport/R_29_2.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_2.dta", replace
}



forvalues x =1/7{
use "/Users/abusung/Documents/sport/R_29_3.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_3.dta", replace
}


forvalues x =1/7{
use "/Users/abusung/Documents/sport/R_29_4.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_4.dta", replace
}


forvalues x =1/7{
use "/Users/abusung/Documents/sport/R_29_5.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_5.dta", replace
}


forvalues x =1/7{
use "/Users/abusung/Documents/sport/R_29_6.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_6.dta", replace
}



forvalues x =1/7{
use "/Users/abusung/Documents/sport/R_29_7.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_7.dta", replace
}

forvalues x =1/7{
use "/Users/abusung/Documents/sport/R_29_1.dta", clear

append using "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_1.dta", replace
}


use "/Users/abusung/Documents/sport/R_29_1.dta", clear

gen RTicket42=.  
gen RTicket43=.
save "/Users/abusung/Documents/sport/21.dta", replace
 
 ********************************************** END **********************
 
 ****For city 1 *************************



use "/Users/abusung/Documents/sport/RTicket_1.dta", clear
save "/Users/abusung/Documents/sport/RTicket_29.dta", replace
gen RTicket11=.
gen RTicket12=.
gen RTicket21=.
gen RTicket22=.
gen RTicket31=.
gen RTicket32=.  
gen RTicket42=.
gen RTicket43=.
save "/Users/abusung/Documents/sport/1.dta", replace
 
********************************************** END **********************

****For city 2 *************************

use "/Users/abusung/Documents/sport/RTicket_2.dta", clear
save "/Users/abusung/Documents/sport/RTicket_29.dta", replace

keep if  ID ==11
keep RTicket11 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_1.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==21
keep RTicket21 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_2.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==31
keep RTicket31 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_3.dta", replace


use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==41
keep RTicket41 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_4.dta", replace

forvalues x =2/4{
use "/Users/abusung/Documents/sport/R_29_1.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_1.dta", replace
}


forvalues x =1/4{
use "/Users/abusung/Documents/sport/R_29_2.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_2.dta", replace
}



forvalues x =1/4{
use "/Users/abusung/Documents/sport/R_29_3.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_3.dta", replace
}


forvalues x =1/4{
use "/Users/abusung/Documents/sport/R_29_4.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_4.dta", replace
}





forvalues x =1/4{
use "/Users/abusung/Documents/sport/R_29_1.dta", clear

append using "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_1.dta", replace
}


use "/Users/abusung/Documents/sport/R_29_1.dta", clear
gen RTicket12=.
gen RTicket22=.
gen RTicket32=.
gen RTicket42=.  
gen RTicket43=.
save "/Users/abusung/Documents/sport/2.dta", replace
 ********************************************** END **********************

****For city 3 *************************

use "/Users/abusung/Documents/sport/RTicket_3.dta", clear
save "/Users/abusung/Documents/sport/RTicket_29.dta", replace

keep if  ID ==11
keep RTicket11 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_1.dta", replace

use "/Users/abusung/Documents/sport/RTicket_29.dta", clear
keep if ID ==31
keep RTicket31 Year Team TeamID City ID
save "/Users/abusung/Documents/sport/R_29_2.dta", replace




forvalues x =1/2{
use "/Users/abusung/Documents/sport/R_29_1.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_1.dta", replace
}


forvalues x =1/2{
use "/Users/abusung/Documents/sport/R_29_2.dta", clear

joinby( Year)using  "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_2.dta", replace
}





forvalues x =1/2{
use "/Users/abusung/Documents/sport/R_29_1.dta", clear

append using "/Users/abusung/Documents/sport/R_29_`x'.dta"

save "/Users/abusung/Documents/sport/R_29_1.dta", replace
}


use "/Users/abusung/Documents/sport/R_29_1.dta", clear
gen RTicket12=.
gen RTicket21=.
gen RTicket22=.
gen RTicket41=.
gen RTicket32=.
gen RTicket42=.  
gen RTicket43=.
save "/Users/abusung/Documents/sport/3.dta", replace
 
********************************************** END **********************
