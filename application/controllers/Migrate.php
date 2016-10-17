<?php 
    class Migrate extends CI_Controller
    {

        public function index()
        {
            $this->load->library('migration');

            if ($this->migration->find_migrations(20161014104937) === FALSE)
            {
                show_error($this->migration->error_string());
            } else {
                echo 'Migrations ran successfully !';
            }
        }

    }
?>