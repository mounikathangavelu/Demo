use Sep19CHN

create Table Mounika.NewEmployee
(
EmpId int identity(1000,1) primary key,
EmpName varchar(20),
EmpLocation varchar(20),
EmpContact bigint
)
insert into Mounika.NewEmployee values('sanam','pune','9876543567')
insert into Mounika.NewEmployee values('prethi','bangalore','9834535656')
insert into Mounika.NewEmployee values('megha','madurai','9824243567')
insert into Mounika.NewEmployee values('sharuk','punjab','9234265776')
select * from Mounika.NewEmployee
update Mounika.NewEmployee set EmpLocation='chennai' WHERE EmpId=1000

--to get next generated Id
select ident_current('Mounika.NewEmployee')+ident_incr('Mounika.NewEmployee')
--sp_tables--built in proc


 --display
 create proc Mounika.usp_displaynewEmployee
 @eName varchar(20),
 @eLoc varchar(20),
 @ePh bigint
AS
BEGIN
insert into  Mounika.NewEmployee values(@eName,@eLoc,@ePh)
END
exec  Mounika.usp_displaynewEmployee 'karthik','kovai',9234567657
 select * from Mounika.EmployeeList

  --edit
 create proc Mounika.usp_EditNewEmployee
 @eName varchar(20),
 @eLoc varchar(20),@ePh bigint, @eId int

 AS
 BEGIN
 update Mounika.NewEmployee set EmpName=@eName, EmpLocation=@eLoc, EmpContact=@ePh where EmpId=@eId 
 END
 exec Mounika.usp_EditNewEmployee 'mohanapriya','sipcot',7856453288,1005
 select * from Mounika.NewEmployee
 --edit

 create proc Mounika.usp_NextEmployeeId
 @newEmpId int out
 AS
 BEGIN
 set @newEmpID=(select IDENT_CURRENT('Mounika.EmployeeList')+ident_incr('Mounika.EmployeeList'))
 END
 declare @newId int
 exec Mounika.usp_NextEmployeeId @newId out
 select @newId as NextEmployee

 --add
 create proc Mounika.usp_AddNewEmployee
 @eName varchar(20),
 @eLoc varchar(20),
 @ePh bigint
AS
BEGIN
--insert
insert into  Mounika.NewEmployee values(@eName,@eLoc,@ePh)
END
 
 exec  Mounika.usp_AddNewEmployee 'marry','gujarat',92676567657
 select * from Mounika.NewEmployee

  --insert

   --search
 create proc Mounika.usp_SearchNewEmployee
  @eId int
AS
BEGIN
select * from Mounika.NewEmployee where EmpId=@eId
END
exec  Mounika.usp_SearchNewEmployee 1004
 select * from Mounika.NewEmployee 
 --search