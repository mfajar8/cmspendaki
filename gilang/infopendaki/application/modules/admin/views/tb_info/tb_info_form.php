<div class="row">
  <div class="col-12">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Tambah Tb_info</h4>
            <form class="form-material m-t-40" method="post" action="<?php echo base_url().$action ?>">
	  <div class="form-group">
            <label>foto_ig</label>
            <input type="text" name="foto_ig" class="form-control" placeholder="">
    </div>
	  <div class="form-group">
            <label>judul_gunung</label>
            <input type="text" name="judul_gunung" class="form-control" placeholder="">
    </div>
	  <div class="form-group">
            <label>desc_gunung</label>
            <input type="text" name="desc_gunung" class="form-control" placeholder="">
    </div>
	  <div class="form-group">
            <label>ketinggan</label>
            <input type="text" name="ketinggan" class="form-control" placeholder="">
    </div>
	  <div class="form-group">
            <label>biaya</label>
            <input type="text" name="biaya" class="form-control" placeholder="">
    </div>
	    <input type="hidden" name="id_jalur" /> 
	
                <div class="form-group">
                  <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Submit</button>
                </div>
            </form>
        </div>
    </div>
  </div>
</div>
