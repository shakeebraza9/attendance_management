<?php
include_once('../conn/conn.php');
include_once('../global.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    try {
        date_default_timezone_set('Your/Timezone');

        $currentTime = new DateTime();

        $date = isset($_POST['date']) && !empty($_POST['date']) ? $_POST['date'] : '';

        if ($date === "" && $currentTime >= new DateTime('00:00') && $currentTime <= new DateTime('11:00')) {
            $date = (new DateTime())->modify('-1 day')->format('Y-m-d');
        } else {
            $date = $date !== "" ? $date : $todayDate;
        }

        $columns = [
            0 => 'tbl_student_id',
            1 => 'student_name',
            2 => 'worktype',
            3 => 'arrival_time',
        ];

        $columnIndex = isset($_POST['order'][0]['column']) ? $_POST['order'][0]['column'] : 0; 
        $columnName = isset($columns[$columnIndex]) ? $columns[$columnIndex] : 'tbl_student_id';
        $sortDirection = isset($_POST['order'][0]['dir']) ? $_POST['order'][0]['dir'] : 'asc'; 

       
        $query = "SELECT * FROM tbl_student WHERE DATE(date) = :date";
        $query .= " AND TIME(date) BETWEEN '13:00:00' AND '23:00:00'";
        $query .= " ORDER BY $columnName $sortDirection"; 

        $stmt = $conn->prepare($query);
        $stmt->bindParam(':date', $date, PDO::PARAM_STR);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);

        echo json_encode([
            "draw" => intval($_POST['draw']),
            "recordsTotal" => count($results),
            "recordsFiltered" => count($results),
            "data" => $results
        ]);

    } catch (PDOException $e) {
        echo json_encode(['error' => $e->getMessage()]);
    }
}
?>
