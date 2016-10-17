<?php
	class Product_model extends CI_Model
	{
		var $table = 'tbl_product';
		

		/**
		 * Construct
		 */
		public function __construct()
		{
			parent :: __construct();
		}

		/**
		 * Add new data
		 * @param   $data
		 * @return  boolean 
		 */
		public function create($data)
		{
			if ($this->db->insert($this->table, $data)) {
				return true; 
			}
		}

		/**
		 * Delete data
		 * @param  $id
		 * @return  Boolean 
		 */
		public function delete($product_id)
		{

			if (!$product_id || !is_numeric($product_id)) {
				return FALSE;
			}

			return $this->db->delete($this->table, ['product_id' => $product_id]);  
		}

		/**
		 * Update data 
		 * @param  $id
		 * @param $data
		 * @return  Boolean
		 */
		public function update($product_id, $data)
		{ 
			if (!$product_id || !is_numeric($product_id)) {
				return FALSE;
			}

			return $this->db->update($this->table, $data, ['product_id' => $product_id]);
		}

		/**
		 * Get total
		 * @return int
		 */
		public function get_total()
		{
			$query = $this->db->get($this->table);
			return $query->num_rows();
		}

		/**
		 * Get detail one record by id
		 * @param   $id
		 * @return  Oject [<description>]
		 */
		public function get_detail_by_id($product_id)
		{
			if(!$product_id || !is_numeric($product_id)) {
				return FALSE;
			}

			$query = $this->db->get_where($this->table, ['product_id' => $product_id]);

			if ($query->num_rows() > 0) {
				return $query->row();
			}
		}

		/**
		 * Get list by a lot condition
		 * @param  $input = array()
		 * @return $array
		 */
		public function get_list_by_where($input = array())
		{
			if (isset($input['where']) && $input['where']) {
				$this->db->where($input['where']);
			}
			if (isset($input['like']) && $input['like']) {
				$this->db->like($input['like'][0],$input['like'][1]);
			}

			if (isset($input['limit'][0]) && isset($input['limit'][1])) {
				$this->db->limit($input['limit'][0],$input['limit'][1]);
			}

			$query = $this->db->get($this->table);
			return $query->result();
		}

	}
?>