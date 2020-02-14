#!/bin/bash


declare -a arr=("benefit" "accident" "fhus" "fhuk" "document" "appointment" "employment"
"working_history" "employmentOption" "educational_detail" "mobility_detail" "dependant_expense"
"disability_info" "disability_effect" "medical_follow_up" "vas_scale_assessment" "dass21_assessment"
"daily_living" ) 

for i in  "${arr[@]}"
do
	printf "\n"
	echo GET http://localhost:8000/api/rtw/$i/123
	curl -X GET http://localhost:8000/api/rtw/$i/123 | python3 -m json.tool
	printf "\n"
done


echo DELETE http://localhost:8000/api/rtw/$i/123
curl -X DELETE http://localhost:8000/api/rtw/employmentOption/123 | python3 -m json.tool
