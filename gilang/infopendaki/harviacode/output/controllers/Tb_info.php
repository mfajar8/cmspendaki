<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tb_info extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Tb_info_model');
        $this->load->library('form_validation');
    }

    public function index()
    {

      $datatb_info=$this->Tb_info_model->get_all();//panggil ke modell
      $datafield=$this->Tb_info_model->get_field();//panggil ke modell

      $data = array(
        'contain_view' => '{namamodule}/tb_info/tb_info_list',
        'sidebar'=>'{namamodule}/sidebar',
        'css'=>'{namamodule}/crudassets/css',
        'script'=>'{namamodule}/crudassets/script',
        'datatb_info'=>$datatb_info,
        'datafield'=>$datafield,
        'module'=>'{namamodule}',
        'titlePage'=>'tb_info',
        'controller'=>'tb_info'
       );
      $this->template->load($data);
    }


    public function create(){
      $data = array(
        'contain_view' => '{namamodule}/tb_info/tb_info_form',
        'sidebar'=>'{namamodule}/sidebar',//Ini buat menu yang ditampilkan di module admin {DIKIRIM KE TEMPLATE}
        'css'=>'{namamodule}/crudassets/css',//Ini buat kirim css dari page nya  {DIKIRIM KE TEMPLATE}
        'script'=>'{namamodule}/crudassets/script',//ini buat javascript apa aja yang di load di page {DIKIRIM KE TEMPLATE}
        'action'=>'{namamodule}/tb_info/create_action',
        'module'=>'{namamodule}',
        'titlePage'=>'tb_info',
        'controller'=>'tb_info'
       );
      $this->template->load($data);
    }

    public function edit($id){
      $dataedit=$this->Tb_info_model->get_by_id($id);
      $data = array(
        'contain_view' => '{namamodule}/tb_info/tb_info_edit',
        'sidebar'=>'{namamodule}/sidebar',//Ini buat menu yang ditampilkan di module admin {DIKIRIM KE TEMPLATE}
        'css'=>'{namamodule}/crudassets/css',//Ini buat kirim css dari page nya  {DIKIRIM KE TEMPLATE}
        'script'=>'{namamodule}/crudassets/script',//ini buat javascript apa aja yang di load di page {DIKIRIM KE TEMPLATE}
        'action'=>'{namamodule}/tb_info/update_action',
        'dataedit'=>$dataedit,
        'module'=>'{namamodule}',
        'titlePage'=>'tb_info',
        'controller'=>'tb_info'
       );
      $this->template->load($data);
    }


    public function create_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
		'foto_ig' => $this->input->post('foto_ig',TRUE),
		'judul_gunung' => $this->input->post('judul_gunung',TRUE),
		'desc_gunung' => $this->input->post('desc_gunung',TRUE),
		'ketinggan' => $this->input->post('ketinggan',TRUE),
		'biaya' => $this->input->post('biaya',TRUE),
	    );

            $this->Tb_info_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('{namamodule}/tb_info'));
        }
    }



    public function update_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->edit($this->input->post('id_jalur', TRUE));
        } else {
            $data = array(
		'foto_ig' => $this->input->post('foto_ig',TRUE),
		'judul_gunung' => $this->input->post('judul_gunung',TRUE),
		'desc_gunung' => $this->input->post('desc_gunung',TRUE),
		'ketinggan' => $this->input->post('ketinggan',TRUE),
		'biaya' => $this->input->post('biaya',TRUE),
	    );

            $this->Tb_info_model->update($this->input->post('id_jalur', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('{namamodule}/tb_info'));
        }
    }

    public function delete($id)
    {
        $row = $this->Tb_info_model->get_by_id($id);

        if ($row) {
            $this->Tb_info_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('{namamodule}/tb_info'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('{namamodule}/tb_info'));
        }
    }

    public function _rules()
    {
	$this->form_validation->set_rules('foto_ig', 'foto ig', 'trim|required');
	$this->form_validation->set_rules('judul_gunung', 'judul gunung', 'trim|required');
	$this->form_validation->set_rules('desc_gunung', 'desc gunung', 'trim|required');
	$this->form_validation->set_rules('ketinggan', 'ketinggan', 'trim|required');
	$this->form_validation->set_rules('biaya', 'biaya', 'trim|required');

	$this->form_validation->set_rules('id_jalur', 'id_jalur', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}