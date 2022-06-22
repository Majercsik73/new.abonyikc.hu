<?php
    class DB{

        //WEBTÁRHELYEN LÉVŐ ADATBÁZIS ELÉRÉSE
        private $server = "localhost";
        private $uName = "abonyikc_admin";
        private $password = "Abonyikc_2022";
        private $dbName = "abonyikc_abonyikc";
        private $connection;
        
        private function connect(){
            $this->connection = mysqli_connect(
                $this->server,
                $this->uName,
                $this->password,
                $this->dbName
            );
            
            if ($this->connection){
                return "A kapcsolat létrejött";
            }
            else{
                return "A kapcsolat nem jött létre";
            }
        }

        private function close(){
            mysqli_close($this->connection);
        }
        /* Karakterkészletét visszaadása
        public function character(){
            $this->connect();
            $char = mysqli_character_set_name($this->connection);
            return $char;
        }*/

        /* Karakterkészletét megváltoztatása és visszaadása
        public function change_character(){
            $this->connect();
            //change character set to utf8mb4
            mysqli_set_charset($this->connection, "utf8mb4");
            $change = mysqli_character_set_name($this->connection);
            return $change;
        }*/

        public function query($sqlcmd){
            $this->connect();

            mysqli_set_charset($this->connection, "utf8mb4");//Megváltoztaja az adatbázisból lekért adat karakterkészletét!!!!!!!!
            
            $result = mysqli_query($this->connection, $sqlcmd);
            $this->close();
            return $result;
        }
        
    }
    
    $db = new DB();
?>