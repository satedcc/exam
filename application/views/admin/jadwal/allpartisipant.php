<div class="table-responsive">
    <table class="table stripe table-default hover">
        <!-- <thead>
            <tr>
                <th>NO</th>
                <th>Regis ID</th>
                <th>Name</th>
                <th>Qualified</th>
                <th>Answered</th>
                <th>Status</th>
                <th>Log Exam</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody> -->
        <?php
        // $no = 1;
        // foreach ($jadwal as $p) {
        //     $jmlsoal    = $this->db->query("SELECT id_regis,id_jawab,id_jadwal FROM ex_jawaban WHERE id_regis='$p->id_regis' AND id_jadwal='$id'")->num_rows();
        //     $status     = ($p->status_partisipant == "Y") ? '<a href="' . base_url('admin/jadwal/draf/' . $p->id_detail_jadwal) . '" class="badge badge-primary rounded-50 px-2">Active</a>' : '<a href="' . base_url('admin/jadwal/aktif/' . $p->id_detail_jadwal) . '" class="badge badge-warning rounded-50 px-2">Non Active</a>';
        //     echo '<tr>
        //             <td>' . $no++ . '</td>
        //             <td>
        //                 <a class="d-none" target="blank" href="' . base_url('admin/jadwal/detailexam/' . $p->id_regis . '/' . $id) . '">' . $p->no_regist . '</a>
        //                 <a target="blank" href="' . base_url('admin/laporan/partisipan/' . $p->id_regis . '/' . $id) . '">' . $p->no_regist . '</a>
        //             </td>
        //             <td>
        //                 <p class="m-0">' . $p->nama_lengkap . '</p>
        //                 <small>' . $p->email_peserta . '</small>
        //             </td>
        //             <td>' . $p->nama_qualified . '</td>
        //             <td>' . $jmlsoal . '</td>
        //             <td>' . $status . '</td>
        //             <td><a target="blank" href="' . base_url('admin/jadwal/log/' . $p->id_regis . '/' . $id) . '" class="badge badge-success rounded-5">Log Exam</a></td>
        //             <td>
        //                 <a href="' . base_url('admin/jadwal/deletePartisipant/' . $p->id_detail_jadwal) . '" class="badge badge-danger rounded-5">Del</a>
        //             </td>
        //         </tr>';
        // }
        ?>
        <!-- </tbody> -->
        <thead>
            <tr>
                <th>NO</th>
                <th>Regist</th>
                <th>Full Name</th>
                <th>Qualified</th>
                <th>Tanggal</th>
                <th>Soal</th>
                <th>Benar</th>
                <th>Salah</th>
                <th>Point</th>
                <th>Minimum Point</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $no = 1;
            foreach ($partisipan as $p) {
                $c = $this->m_jawaban->cekNilaiExam($p->id_regis, $p->id_jadwal);
                $benar          = ($c->benar + $c->benar_essay) * $p->nilai_benar;
                $salah          = (($c->jml - $c->pass) - ($c->benar + $c->benar_essay)) * $p->nilai_salah;
                $total_score    = ($benar - $salah);
                $status         = ($total_score >= $p->score) ? 'PASS' : 'FAIL';

                $x = $this->m_jawaban->needActionUser($p->id_regis, $p->id_jadwal);

                $xx = ($x > 0) ? 'Need Action' : $status;
                echo '<tr>
                        <td>' . $no++ . '</td>
                        <td>' . $p->no_regist . '</td>
                        <td>' . $p->nama_lengkap . '</td>
                        <td>' . $p->nama_qualified . '</td>
                        <td>Tanggal</td>
                        <td>' . ($c->jml - $c->pass) . '</td>
                        <td>' . ($c->benar + $c->benar_essay) . '</td>
                        <td>' . (($c->jml - $c->pass) - ($c->benar + $c->benar_essay)) . '</td>
                        <td>' . $total_score . '</td>
                        <td>' . $p->score . '</td>
                        <td>' . $xx . '</td>
                    </tr>';
            }
            ?>
        </tbody>
    </table>
</div>
<script>
    $(document).ready(function() {
        var table = $('.table-default').DataTable({
            "pageLength": 50,
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

        $('.dataTables_length select').select2({
            minimumResultsForSearch: Infinity
        });
        $('body').on('submit', '#form', function(e) {
            e.preventDefault();
            var data = table.$('input').serialize();
            $.ajax({
                method: 'POST',
                url: '<?= base_url('admin/jadwal/addpartisipant/') ?>',
                data: data,
                success: function(data) {
                    Swal.fire(
                        'Success',
                        'Add Partisipant Success',
                        'success'
                    ).then(function() {
                        window.location = "<?= base_url('admin/jadwal/') ?>";
                    });
                }
            });
        });
        $('body').on('click', '#cek_all', function(event) {
            if (this.checked) {
                // Iterate each checkbox
                $(':checkbox').each(function() {
                    this.checked = true;
                });
            } else {
                $(':checkbox').each(function() {
                    this.checked = false;
                });
            }
        });
    });
</script>