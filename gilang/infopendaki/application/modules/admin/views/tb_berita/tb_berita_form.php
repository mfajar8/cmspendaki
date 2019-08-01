<div class="row">
  <div class="col-12">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Tambah Tb_berita</h4>
            <form class="form-material m-t-40" method="post" action="<?php echo base_url().$action ?>">
	  <div class="form-group">
            <label>foto</label>
            <input type="text" name="foto" class="form-control" placeholder="">
    </div>
	  <div class="form-group">
            <label>judul_berita</label>
            <input type="text" name="judul_berita" class="form-control" placeholder="">
    </div>
	  <div class="form-group">
            <label>tanggal_posting</label>
            <input type="text" name="tanggal_posting" class="form-control" placeholder="">
    </div>
	  <div class="form-group">
            <label>isi_berita</label>
            <input type="text" name="isi_berita" class="form-control" placeholder="">
    </div>
	  <div class="form-group">
            <label>penulis</label>
            <input type="text" name="penulis" class="form-control" placeholder="">
    </div>
	    <input type="hidden" name="id" /> 
	
                <div class="form-group">
                  <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Submit</button>
                </div>
            </form>
        </div>
    </div>
  </div>
</div>
