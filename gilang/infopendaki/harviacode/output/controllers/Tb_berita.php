<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Tb_berita extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Tb_berita_model');
        $this->load->library('form_validation');
    }

    public function index()
    {

      $datatb_berita=$this->Tb_berita_model->get_all();//panggil ke modell
      $datafield=$this->Tb_berita_model->get_field();//panggil ke modell

      $data = array(
        'contain_view' => '{namamodule}/tb_berita/tb_berita_list',
        'sidebar'=>'{namamodule}/sidebar',
        'css'=>'{namamodule}/crudassets/css',
        'script'=>'{namamodule}/crudassets/script',
        'datatb_berita'=>$datatb_berita,
        'datafield'=>$datafield,
        'module'=>'{namamodule}',
        'titlePage'=>'tb_berita',
        'controller'=>'tb_berita'
       );
      $this->template->load($data);
    }


    public function create(){
      $data = array(
        'contain_view' => '{namamodule}/tb_berita/tb_berita_form',
        'sidebar'=>'{namamodule}/sidebar',//Ini buat menu yang ditampilkan di module admin {DIKIRIM KE TEMPLATE}
        'css'=>'{namamodule}/crudassets/css',//Ini buat kirim css dari page nya  {DIKIRIM KE TEMPLATE}
        'script'=>'{namamodule}/crudassets/script',//ini buat javascript apa aja yang di load di page {DIKIRIM KE TEMPLATE}
        'action'=>'{namamodule}/tb_berita/create_action',
        'module'=>'{namamodule}',
        'titlePage'=>'tb_berita',
        'controller'=>'tb_berita'
       );
      $this->template->load($data);
    }

    public function edit($id){
      $dataedit=$this->Tb_berita_model->get_by_id($id);
      $data = array(
        'contain_view' => '{namamodule}/tb_berita/tb_berita_edit',
        'sidebar'=>'{namamodule}/sidebar',//Ini buat menu yang ditampilkan di module admin {DIKIRIM KE TEMPLATE}
        'css'=>'{namamodule}/crudassets/css',//Ini buat kirim css dari page nya  {DIKIRIM KE TEMPLATE}
        'script'=>'{namamodule}/crudassets/script',//ini buat javascript apa aja yang di load di page {DIKIRIM KE TEMPLATE}
        'action'=>'{namamodule}/tb_berita/update_action',
        'dataedit'=>$dataedit,
        'module'=>'{namamodule}',
        'titlePage'=>'tb_berita',
        'controller'=>'tb_berita'
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
		'foto' => $this->input->post('foto',TRUE),
		'judul_berita' => $this->input->post('judul_berita',TRUE),
		'tanggal_posting' => $this->input->post('tanggal_posting',TRUE),
		'isi_berita' => $this->input->post('isi_berita',TRUE),
		'penulis' => $this->input->post('penulis',TRUE),
	    );

            $this->Tb_berita_model->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('{namamodule}/tb_berita'));
        }
    }



    public function update_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->edit($this->input->post('id', TRUE));
        } else {
            $data = array(
		'foto' => $this->input->post('foto',TRUE),
		'judul_berita' => $this->input->post('judul_berita',TRUE),
		'tanggal_posting' => $this->input->post('tanggal_posting',TRUE),
		'isi_berita' => $this->input->post('isi_berita',TRUE),
		'penulis' => $this->input->post('penulis',TRUE),
	    );

            $this->Tb_berita_model->update($this->input->post('id', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('{namamodule}/tb_berita'));
        }
    }

    public function delete($id)
    {
        $row = $this->Tb_berita_model->get_by_id($id);

        if ($row) {
            $this->Tb_berita_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('{namamodule}/tb_berita'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('{namamodule}/tb_berita'));
        }
    }

    public function _rules()
    {
	$this->form_validation->set_rules('foto', 'foto', 'trim|required');
	$this->form_validation->set_rules('judul_berita', 'judul berita', 'trim|required');
	$this->form_validation->set_rules('tanggal_posting', 'tanggal posting', 'trim|required');
	$this->form_validation->set_rules('isi_berita', 'isi berita', 'trim|required');
	$this->form_validation->set_rules('penulis', 'penulis', 'trim|required');

	$this->form_validation->set_rules('id', 'id', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}