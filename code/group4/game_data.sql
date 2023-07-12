CREATE TABLE IF NOT EXISTS game_info (
    Round_num VARCHAR(5),
    Game_num VARCHAR(5),
    Game_Date DATE,
    Home_Team VARCHAR(50),
    Away_Team VARCHAR(50),
    Start_Time TIME,
    Vote_Count INT
) CHARSET=UTF8;

###
SELECT * FROM game_info;

SELECT 
    *
FROM game_info
WHERE Round_num = 'R21';

###

###

SELECT
    Round_num
FROM game_info
GROUP BY Round_num

###


INSERT INTO game_info
(Round_num, Game_num, Game_Date, Home_Team, Away_Team, Start_Time, Vote_Count)
VALUES
('R20', '1경기', '2023-07-01', '전북', '제주', '18:00', 0),
('R20', '2경기', '2023-07-01', '대구', '수원', '19:00', 0),
('R20', '3경기', '2023-07-01', '서울', '대전', '19:30', 0),
('R20', '4경기', '2023-07-02', '광주', '울산', '18:00', 0),
('R20', '5경기', '2023-07-02', '포항', '수원FC', '19:00', 0),
('R20', '6경기', '2023-07-02', '인천', '강원', '20:00', 0),
('R21', '1경기', '2023-07-07', '제주', '대구', '19:30', 0),
('R21', '2경기', '2023-07-07', '강원', '광주', '19:30', 0),
('R21', '3경기', '2023-07-08', '포항', '울산', '18:00', 0),
('R21', '4경기', '2023-07-08', '수원FC', '인천', '19:00', 0),
('R21', '5경기', '2023-07-08', '전북', '서울', '19:30', 0),
('R21', '6경기', '2023-07-09', '대전', '수원', '19:00', 0),
('R22', '1경기', '2023-07-11', '대구', '강원', '19:00', 0),
('R22', '2경기', '2023-07-11', '제주', '광주', '19:30', 0),
('R22', '3경기', '2023-07-12', '울산', '인천', '19:00', 0),
('R22', '4경기', '2023-07-12', '수원', '포항', '19:30', 0),
('R22', '5경기', '2023-07-12', '서울', '수원FC', '19:30', 0),
('R22', '6경기', '2023-07-12', '대전', '전북', '19:30', 0),
('R23', '1경기', '2023-07-15', '수원', '울산', '19:00', 0),
('R23', '2경기', '2023-07-15', '강원', '서울', '19:30', 0),
('R23', '3경기', '2023-07-15', '광주', '대구', '20:00', 0),
('R23', '4경기', '2023-07-16', '전북', '수원FC', '19:00', 0),
('R23', '5경기', '2023-07-16', '포항', '제주', '19:30', 0),
('R23', '6경기', '2023-07-16', '인천', '대전', '20:00', 0),
('R24', '1경기', '2023-07-21', '울산', '제주', '19:30', 0),
('R24', '2경기', '2023-07-21', '포항', '전북', '20:00', 0),
('R24', '3경기', '2023-07-22', '수원FC', '광주', '19:00', 0),
('R24', '4경기', '2023-07-22', '서울', '인천', '19:30', 0),
('R24', '5경기', '2023-07-22', '강원', '수원', '19:30', 0),
('R24', '6경기', '2023-07-22', '대전', '대구', '20:00', 0),
('R25', '1경기', '2023-08-04', '서울', '포항', '19:30', 0),
('R25', '2경기', '2023-08-04', '광주', '대전', '19:30', 0),
('R25', '3경기', '2023-08-05', '수원', '수원FC', '19:00', 0),
('R25', '4경기', '2023-08-05', '대구', '울산', '19:30', 0),
('R25', '5경기', '2023-08-06', '전북', '인천', '19:00', 0),
('R25', '6경기', '2023-08-06', '제주', '강원', '19:30', 0),
('R26', '1경기', '2023-08-12', '전북', '수원', '19:00', 0),
('R26', '2경기', '2023-08-12', '강원', '울산', '19:30', 0),
('R26', '3경기', '2023-08-12', '제주', '수원FC', '20:00', 0),
('R26', '4경기', '2023-08-13', '대전', '서울', '19:00', 0),
('R26', '5경기', '2023-08-13', '인천', '대구', '19:30', 0),
('R26', '6경기', '2023-08-13', '포항', '광주', '20:00', 0),
('R27', '1경기', '2023-08-18', '수원', '제주', '19:30', 0),
('R27', '2경기', '2023-08-18', '인천', '광주', '19:30', 0),
('R27', '3경기', '2023-08-19', '울산', '전북', '19:00', 0),
('R27', '4경기', '2023-08-19', '강원', '수원FC', '19:00', 0),
('R27', '5경기', '2023-08-19', '서울', '대구', '19:30', 0),
('R27', '6경기', '2023-08-20', '포항', '대전', '19:00', 0),
('R28', '1경기', '2023-08-25', '수원FC', '인천', '19:00', 0),
('R28', '2경기', '2023-08-25', '전북', '대전', '19:30', 0),
('R28', '3경기','2023-08-26', '대구', '제주', '19:00', 0),
('R28', '4경기', '2023-08-26', '강원', '포항', '19:30', 0),
('R28', '5경기', '2023-08-27', '서울', '울산', '19:00', 0),
('R28', '6경기', '2023-08-27', '광주', '수원', '19:30', 0),
('R29', '1경기', '2023-09-01', '대전', '수원FC', '19:00', 0),
('R29', '2경기', '2023-09-01', '대구', '강원', '19:30', 0),
('R29', '3경기', '2023-09-02', '수원', '서울', '16:30', 0),
('R29', '4경기', '2023-09-02', '인천', '포항', '19:00', 0),
('R29', '5경기', '2023-09-03', '울산', '광주', '16:30', 0),
('R29', '6경기', '2023-09-03', '제주', '전북', '19:00', 0),
('R30', '1경기', '2023-09-16', '전북', '강원', '14:00', 0),
('R30', '2경기', '2023-09-16', '인천', '제주', '14:00', 0),
('R30', '3경기', '2023-09-16', '포항', '수원FC', '16:30', 0),
('R30', '4경기', '2023-09-16', '울산', '대전', '19:00', 0),
('R30', '5경기', '2023-09-17', '서울', '광주', '14:00', 0),
('R30', '6경기', '2023-09-17', '수원', '대구', '16:30', 0),
('R31', '1경기', '2023-09-23', '대전', '수원', '14:00', 0),
('R31', '2경기', '2023-09-23', '제주', '서울', '16:30', 0),
('R31', '3경기', '2023-09-24', '광주', '전북', '14:00', 0),
('R31', '4경기', '2023-09-24', '수원FC', '울산', '14:00', 0),
('R31', '5경기', '2023-09-24', '강원', '인천', '16:30', 0),
('R31', '6경기', '2023-09-24', '대구', '포항', '19:00', 0),
('R32', '1경기', '2023-09-30', '포항', '울산', '14:00', 0),
('R32', '2경기', '2023-09-30', '수원FC', '서울', '14:00', 0),
('R32', '3경기', '2023-09-30', '전북', '대구', '16:30', 0),
('R32', '4경기', '2023-09-30', '인천', '수원', '19:00', 0),
('R32', '5경기','2023-10-01', '강원', '대전', '14:00', 0),
('R32', '6경기', '2023-10-01', '제주', '광주', '16:30', 0),
('R33', '1경기', '2023-10-08', '울산', '인천', '15:00', 0),
('R33', '2경기', '2023-10-08', '수원', '포항', '15:00', 0),
('R33', '3경기', '2023-10-08', '서울', '전북', '15:00', 0),
('R33', '4경기', '2023-10-08', '대전', '제주', '15:00', 0),
('R33', '5경기', '2023-10-08', '대구', '수원FC', '15:00', 0),
('R33', '6경기', '2023-10-08', '광주', '강원', '15:00', 0);