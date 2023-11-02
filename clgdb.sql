use college;
show tables;
CREATE TABLE mba_students (
  roll_no INT auto_increment,
  first_name varchar(20) not null,
  last_name varchar(20) default null,
  std_address VARCHAR(50),
  phone_no BIGINT(10),
  alt_phone_no BIGINT(10) default null,
  semester INT DEFAULT 1,
  id int(3),
  primary key(roll_no, id)
);
show tables;
desc mba_students;
drop table mba_students;
INSERT INTO mba_students (first_name, last_name, std_address, phone_no, alt_phone_no, semester, id)
VALUES
('Aarav', 'Kumar', 'B-1/2, Sector-18, Noida, Uttar Pradesh', 9876543210, 9876543211, 1,139),
('Aarav', 'Singh', 'C-2/3, Sector-62, Noida, Uttar Pradesh', 9876543212, 9876543213, 1, 140),
('Aarav', 'Yadav', 'D-3/4, Sector-18, Noida, Uttar Pradesh', 9876543214, 9876543215, 1,141),
('Abhay', 'Kumar', 'E-4/5, Sector-62, Noida, Uttar Pradesh', 9876543216, 9876543217, 1,142),
('Abhay', 'Singh', 'F-5/6, Sector-18, Noida, Uttar Pradesh', 9876543218, 9876543219, 1,143),
('Abhay', 'Yadav', 'G-6/7, Sector-62, Noida, Uttar Pradesh', 9876543220, 9876543221, 1,144),
('Aditya', 'Kumar', 'H-7/8, Sector-18, Noida, Uttar Pradesh', 9876543222, 9876543223, 1,145),
('Aditya', 'Singh', 'I-8/9, Sector-62, Noida, Uttar Pradesh', 9876543224, 9876543225, 1,146),
('Aditya', 'Yadav', 'J-9/10, Sector-18, Noida,Uttar Pradesh ', 9876543226 ,9876543227 ,1,147 ),
('Advait','Kumar','K-10/11,Sector-62,Noida,Uttar Pradesh ',9876543228 ,9876543229 ,1,148 ),
('Advait','Singh','L-11/12,Sector-18,Noida,Uttar Pradesh ',9876543230 ,9876543231 ,1,149 ),
('Advait','Yadav','M-12/13,Sector-62,Noida,Uttar Pradesh ',9876543232 ,9876543233 ,1 ,150),
('Alok','Kumar','N-13/14,Sector-18,Noida,Uttar Pradesh ',9876543234 ,9876543235 ,1,151 ),
('Alok','Singh','O-14/15,Sector-62,Noida,Uttar Pradesh ',9876543236 ,9876543237 ,1 ,152),
('Alok','Yadav','P-15/16,Sector-18,Noida,Uttar Pradesh ',9876543238 ,9876543239 ,1 ,153),
('Amal','Kumar','Q-16/17,Sector-62,Noida,Uttar Pradesh ',9876543240 ,9876543241 ,1,154 ),
('Amal','Singh','R-17/18,Sector-18,Noida,Uttar Pradesh ',9876543242 ,9876543243 ,1,155 ),
('Amal','Yadav','S-18/19,Sector-62,Noida,Uttar Pradesh ',9876543244 ,9876543245 ,1 ,156),
('Amol','Kumar','T-19/20,Sector-18,Noida,Uttar Pradesh ',9876543246 ,9876543247 ,1 ,157),
('Amol','Singh','U-20/21,Sector-62,Noida,Uttar Pradesh ',9876543248 ,9876543249 ,1 ,158),
('Amol','Yadav','V-21/22,Sector-18,Noida,Uttar Pradesh ',9876543250 ,9876543251 ,1,159 ),
('Anand','Kumar','W-22/23,Sector-62,Noida,Uttar Pradesh ',9876543252 ,9876543253 ,1,160 ),
('Anand','Singh','X-23/24,Sector-18,Noida,Uttar Pradesh ',9876543254 ,9876543255 ,1,161 ),
('Anand','Yadav','Y-24/25,Sector-62,Noida,Uttar Pradesh ',9876543256 ,9876543257 ,1 ,162),
('Babita', 'Sharma', 'A-12, Sector-15, Noida', 9876543210, 8765432109, 2, 101),
('Bablu', 'Singh', 'B-5, Rajouri Garden, Delhi', 8765432190, 7654321098, 1, 102),
('Badrinath', 'Verma', 'C-7, Lajpat Nagar, Delhi', 7654321980, 6543210987, 3, 103),
('Bahubali', 'Kumar', 'D-9, Rohini, Delhi', 6543219870, 5432109876, 4, 104),
('Bala', 'Murugan', 'E-11, Anna Nagar, Chennai', 5432198760, 4321098765, 2, 105),
('Balaji', 'Rao', 'F-13, Banjara Hills, Hyderabad', 4321987650, 3210987654, 1, 106),
('Baldev', 'Singh', 'G-15, Model Town, Ludhiana', 3219876540, 2109876543, 3, 107),
('Balram', 'Yadav', 'H-17, Indira Nagar, Lucknow', 2198765430, 1098765432, 4, 108),
('Banita', 'Kaur', 'I-19, Sector-22, Chandigarh', 1987654320, NULL ,2 ,109),
('Bansi', 'Lal', 'J-21 ,MG Road ,Gurgaon' ,1876543290 ,NULL ,1 ,110),
('Barkha', 'Dutt' ,'K-23 ,Civil Lines ,Jaipur' ,1765432190 ,NULL ,3 ,111),
('Barun', 'Das' ,'L-25 ,Salt Lake City ,Kolkata' ,1654321980 ,NULL ,4 ,112),
('Basanti' ,'Roy' ,'M-27 ,Park Street ,Kolkata' ,1543298760 ,NULL ,2 ,113),
('Basavaraj' ,'Patil' ,'N-29 ,MG Road ,Bangalore' ,1432198765 ,NULL ,1 ,114),
('Basheer' ,'Ahmed' ,'O-31 ,Charminar Road ,Hyderabad' ,1321987654 ,NULL ,3 ,115),
('Chaitanya', 'Sharma', 'R-37, Sector-16, Noida', 9987654321, 8976543210, 2, 117),
('Chandan', 'Singh', 'S-39, Rajouri Garden, Delhi', 8976543219, 7965432108, 1, 118),
('Chandra', 'Verma', 'T-41, Lajpat Nagar, Delhi', 7965432198, 6954321087, 3, 119),
('Chetan', 'Kumar', 'U-43, Rohini, Delhi', 6954321987, 5943210876, 4, 120),
('Chinmay', 'Murugan', 'V-45, Anna Nagar, Chennai', 5943219876, 4932108765, 2, 121),
('Chirag', 'Rao', 'W-47, Banjara Hills, Hyderabad', 4932198765, 3921098764, 1, 122),
('Daksh', 'Singh', 'X-49 ,Model Town ,Ludhiana' ,3921987654 ,2910987653 ,3 ,123),
('Damini' ,'Yadav' ,'Y-51 ,Indira Nagar ,Lucknow' ,2919876543 ,1909876542 ,4 ,124),
('Darshan' ,'Kaur' ,'Z-53 ,Sector-23 ,Chandigarh' ,1908765432 ,NULL ,2 ,125),
('Deepak' ,'Lal' ,'A1-55 ,MG Road ,Gurgaon' ,1897654329 ,NULL ,1 ,126),
('Deepika' ,'Dutt' ,'A2-57 ,Civil Lines ,Jaipur' ,1786543298 ,NULL ,3 ,127),
('Devesh' ,'Das' ,'A3-59 ,Salt Lake City ,Kolkata' ,1675432198 ,NULL ,4 ,128),
('Ekta', 'Sharma', 'A5-63, Sector-17, Noida', 1453219876, NULL, 2, 129),
('Esha', 'Singh', 'A6-65, Rajouri Garden, Delhi', 1342198765, NULL, 1, 130),
('Faizan', 'Verma', 'A7-67, Lajpat Nagar, Delhi', 1231987654, NULL, 3, 131),
('Farhan', 'Kumar', 'A8-69, Rohini, Delhi', 1129876543, NULL, 4, 132),
('Ganesh', 'Murugan', 'A9-71, Anna Nagar, Chennai', 1098765432, NULL, 2, 133),
('Garima', 'Rao', 'B1-73 ,Banjara Hills ,Hyderabad' ,1097654321 ,NULL ,1 ,134),
('Gaurav' ,'Singh' ,'B2-75 ,Model Town ,Ludhiana' ,1096543219 ,NULL ,3 ,135),
('Geeta' ,'Yadav' ,'B3-77 ,Indira Nagar ,Lucknow' ,1095432198 ,NULL ,4 ,136),
('Govind', 'Lal', 'B5-81, MG Road, Gurgaon', 1093219876, NULL, 2, 137),
('Gunjan', 'Dutt', 'B6-83, Civil Lines, Jaipur', 1092198765, NULL, 1, 138);

select * from mba_students;
select roll_no, id, concat( first_name,' ', last_name) as std_name, std_address, phone_no, alt_phone_no 
from mba_students order by roll_no;




