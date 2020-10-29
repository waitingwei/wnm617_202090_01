<?php


function makeConn() {
   include_once "auth.php";
   try {
      $conn = new PDO(...Auth());
      $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
      return $conn;
   } catch (PDOException $e) {
      die('ERROR '.$e->getMessage());
   }
}

function fetchAll($r) {
   $a = [];
   while($row = $r->fetch(PDO::FETCH_OBJ))
      $a[] = $row;
   return $a;
}

// connection, prepared statement, parameters
function makeQuery($c,$ps,$p) {
   try{
      $stmt = $c->query($ps);

      $r = fetchAll($stmt);

      return [
         "result"=>$r
      ];
   } catch (PDOException $e) {
      die('ERROR '.$e->getMessage());
   }
}



echo json_encode(
   makeQuery(makeConn(),"SELECT * FROM track_users",[]),
   JSON_NUMERIC_CHECK
);