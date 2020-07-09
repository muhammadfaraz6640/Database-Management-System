select ADate,ATime,Examination_RoomNo from Appointments 
	where Patient_id = ( select Patient_id from Patient where Patient_gender = 'Male' AND LocalDoctor_id = 1 )


select FirstName,LastName from staff where Qid = 
	(select Qid from Qualification where TypeQualificaion = 'Nursing') AND Expid = 
		(select Expid from Experience where ExpOrganization = 'Ned University')