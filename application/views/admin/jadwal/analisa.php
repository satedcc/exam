<div class="content-header justify-content-between">
    <div>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Report</a></li>
                <li class="breadcrumb-item active" aria-current="page">Report Analytics Exam</li>
            </ol>
        </nav>
        <h4 class="content-title content-title-xs">Detail Exam</h4>
    </div>
    <a href="#modal2" class="btn btn-primary rounded-5" data-toggle="modal">Filter Data</a>
</div>
<div class="content-body">
    <div class="row">
        <div class="col-md-12">
            <div class="card card-hover card-task-one">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table stripe table-peserta hover">
                            <thead>
                                <tr>
                                    <th>NO</th>
                                    <th>Regist</th>
                                    <th>Full Name</th>
                                    <th>Qualified</th>
                                    <th>Schedule</th>
                                    <th>Tanggal</th>
                                    <th>Soal</th>
                                    <th>Answer</th>
                                    <th>Final Ans</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no++;
                                foreach ($analisa as $a) {
                                    echo '<tr>
                                            <td>' . $no++ . '</td>
                                            <td>' . $a->no_regist . '</td>
                                            <td>' . $a->nama_lengkap . '</td>
                                            <td></td>
                                            <td>' . $a->nama_jadwal . '</td>
                                            <td>' . $a->created_date . '</td>
                                            <td>' . $a->soal . '</td>
                                            <td>' . $a->jawaban . '</td>
                                            <td>' . $a->kunci_jawaban . '</td>
                                            <td>' . $a->benar_salah . '</td>
                                        </tr>';
                                }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel2" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h6 class="modal-title" id="exampleModalLabel2">Filter Data</h6>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"><i data-feather="x"></i></span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group row">
                                <label for="kategori" class="col-sm-3 col-form-label font-weight-bold">Exam Type</label>
                                <div class="col-sm-9">
                                    <select name="kategori" id="kategori" class="form-control ">
                                        <option value="0">Exam Type</option>
                                        <?php foreach ($ujian as $j) : ?>
                                            <?php if (isset($row)) : ?>
                                                <?php if ($row->id_kategori == $j->id_ujian) : ?>
                                                    <option value="<?= $j->id_ujian ?>" selected><?= $j->nama_ujian ?></option>
                                                <?php else : ?>
                                                    <option value="<?= $j->id_ujian ?>"><?= $j->nama_ujian ?></option>
                                                <?php endif; ?>
                                            <?php else : ?>
                                                <option value="<?= $j->id_ujian ?>"><?= $j->nama_ujian ?></option>
                                            <?php endif; ?>
                                        <?php endforeach; ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="mulai" class="col-sm-3 col-form-label font-weight-bold">Start/End Date</label>
                                <div class="col-sm-9">
                                    <div class="row">
                                        <div class="col-md mb-2">
                                            <div class="row">
                                                <div class="col">
                                                    <input required type="text" class="form-control" id="mulai" name="mulai" placeholder="start date" value="<?= (isset($row)) ? $start[0] : date("Y-m-d"); ?>">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md mb-2">
                                            <div class="row">
                                                <div class="col">
                                                    <input required type="text" class="form-control" id="selesai" name="selesai" placeholder="end date" value="<?= (isset($row)) ? $selesai[0] : date("Y-m-d"); ?>">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="message-date"></div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
                            <button class="btn btn-dark btn-sm">Filter Data</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function() {
        $('#mulai').datepicker({
            dateFormat: "yy-mm-dd",
        });
        $('#selesai').datepicker({
            dateFormat: "yy-mm-dd",
        });

        var table = $('.table-peserta').DataTable({
            "pageLength": 25,
            dom: 'Bfrtip',
            buttons: [
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5'
            ],
            "columnDefs": [{
                    "orderable": false,
                    "targets": [-1, 0]
                },
                {
                    "searchable": false,
                    "targets": [-1, 0]
                }
            ]
        });



    });
</script>