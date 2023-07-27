<div id="contentwrapper">
    <div id="contentcolumn">
        <div class="innertube">
            <div class="sub-header">
                <div>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Finish</li>
                    </ol>
                </div>
                <div class="date">
                    <h2 id="jam"><?= date('H:i:s') ?></h2>
                </div>
            </div>
            <div class="body" style="margin-bottom:50px ;">
                <div class="row">
                    <div class="col-md m-auto">
                        <div class="card card-hover">
                            <div class="card-body finish">
                                <img src="<?= base_url() ?>dir/exam/checked.png" alt="">
                                <h1>Thank you <?= $this->session->userdata('nama') ?></h1>
                                <p>Congratulation on completing the exam. We will check your answers and will inform the results via email.
                                </p>
                                <a href="<?= base_url('dashboard') ?>" class="btn btn-main">Back to account</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>