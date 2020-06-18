(
* Quiz 1 SML Code *)

(* Table is a (string * string * string * int) list for the records
val table =
[("Nancy", "F", "Associate", 7),
("Peter", "M", "Associate", 5),
("Paul", "M", "Sr. Partner", 23),
("Robert", "M", "Jr. Partner", 11),
("Ralph", "M", "Associate", 4),
("Rhonda", "F", "Associate", 11),
("Sam", "M", "Associate", 5),
("Sara", "F", "Associate", 9),
("Alice", "F", "Sr. Partner", 27),
("Bob", "M", "Jr. Partner", 14),
("Eve", "F", "Associate", 9),
("John", "M", "Jr. Partner", 17),
("Gary", "M", "Associate", 6),
("Adam", "M", "Associate", 8),
("Carl", "M", "Associate", 2),
("Douglas", "M", "Jr. Partner", 14),
("Sally", "F", "Jr. Partner", 19),
("Joseph", "M", "Sr. Partner", 33),
("Mary", "F", "Jr. Partner", 18),
("Esther", "F", "Associate", 8),
("Frank", "M", "Associate", 7),
("Jane", "F", "Associate", 3),
("George", "M", "Jr. Partner", 15),
("Harry", "M", "Associate", 1),
("Robin", "F", "Associate", 8),
("David", "M", "Jr. Partner", 16),
("Jan", "F", "Associate", 6),
("Jack", "M", "Associate", 4),
("Ken", "M", "Associate", 9),
("Kathy", "F", "Associate", 1),
("Larry", "M", "Associate", 7),
("Mike", "M", "Jr. Partner", 12),
("Ted", "M", "Jr. Partner", 18),
("Terry", "M", "Sr. Partner", 30),
("Victor", "M", "Associate", 3),
("Vera", "F", "Sr. Partner", 28),
("Wilma", "F", "Associate", 7),
("Zack", "M", "Associate", 1),
("Debra", "F", "Associate", 12),
("Bonnie", "F", "Associate", 5),
("Dan", "M", "Jr. Partner", 17),
("Meredith", "M", "Jr. Partner", 17),
("Randal", "M", "Associate", 9),
("Jake", "M", "Jr. Partner", 12),
("Karen", "F", "Jr. Partner", 9)];

(* Calculate the total hours of experience between all Jr. Partners *)
(* assume one year = 2080 hours of experience                       *)
fun calc_h (status:string) [] = 0
  | calc_h (status) (head::table:(string*string*string*int)list) =
  let
    val (name, gender, j_status, exp) = head
    val match:bool = (status = j_status)
  in
    if match then (2080*exp)+(calc_h status table) else (calc_h status table)
  end;

calc_h "Jr. Partner" table;

(* Calculate the male/female split *)

fun get_male_female(status:string) [] = (0, 0)
  | get_male_female(status:string) (head::table) =
  let
    (* Use pattern matching to get elmenets of list entry *)
    val (name, gender, j_status, exp) = head
    val f_match:bool = ((status = j_status) andalso (gender = "F"))
    val m_match:bool = ((status = j_status) andalso (gender = "M"))
    val (p_male, p_fem) = get_male_female status table
  in
    ((if m_match then 1 else 0)+p_male,(if f_match then 1 else 0)+p_fem)
  end;

get_male_female "Jr. Partner" table;
