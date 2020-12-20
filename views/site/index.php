<?php
/* @var $this yii\web\View */
$this->title = 'ระบบบันทึก ITA โรงพยาบาลสว่างวีระวงศ์ จังหวัดอุบลราชธานี (ปีงบประมาณ 2564)';
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ListView;
use yii\db\Query;
use app\models\HaDocuments;
use app\models\Group;


?>
<div class="site-index">

    <!-- <div class="jumbotron"> -->
    <!-- <h1>มาตรฐาน HA โรงพยาบาลน้ำยืน</h1> -->
    <!-- </div> -->

    <div class="body-content">
      <div class="row">
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                  <span class="info-box-icon bg-yellow"><i class="fa fa-files-o"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">Uploads</span>
                    <span class="info-box-number pull-left badge bg-blue">
                      <?=$model = HaDocuments::find()
                        ->count();
                      ?>
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                  <span class="info-box-icon bg-aqua"><i class="fa fa-user-circle"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">USER</span>
                    <span class="info-box-number pull-left badge bg-green">
                      <?php echo dektrium\user\models\User::find()->count(); ?>
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                  <span class="info-box-icon bg-red"><i class="fa fa-star-o"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">Likes</span>
                    <span class="info-box-number pull-left badge bg-red">
                      <?=$model = Group::find()
                        ->count();
                      ?>
                    </span>
                  </div>
                  <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
              </div>
              <!-- /.col -->
              <!-- /.col -->
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                  <span class="info-box-icon bg-green"><i class="fa fa-flag-o"></i></span>

                  <div class="info-box-content">
                    <span class="info-box-text">DEMO</span>
                    <span class="info-box-number">0</span>
                  </div>
                </div>
              </div>
              <!-- /.col -->
              <!-- /.col -->
            </div>
        <div class="row">
            <div class="col-md-12">
              <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">ตัวชี้วัดที่ 1 การเปิดเผยข้อมูล [EB1 หน่วยงานมีการกำหนดมาตรการ และวางระบบการเผยแพร่ข้อมูลต่อสาธารณะ ผ่านเว็บไซต์ของหน่วยงาน]</h3>
                </div>
                <div class="box-body">
                  <?php
                  echo ListView::widget([
                    'dataProvider' => $dataProvider,
                    'itemView' => '/group/_item',
                    'layout' => '{items}',
                  ]);
                  ?>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title">ตัวชี้วัดที่ 1 การเปิดเผยข้อมูล [EB2 หน่วยงานมีการเปิดเผยข้อมูลข่าวสารที่เป็นปัจจุบัน]</h3>
                </div>
                <div class="box-body">
                  <?php
                  echo ListView::widget([
                      'dataProvider' => $had,
                      'itemView' => '/group/_had',
                      'layout' => '{items}',
                  ]);
                  ?>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="box box-warning">
                <div class="box-header with-border">
                  <h3 class="box-title">ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ [EB3 หน่วยงานมีรายงานการวิเคราะห์ผลการจัดซื้อจัดจ้างและการจัดหาพัสดุประจำปีงบประมาณ พ.ศ. 2563]</h3>
                </div>
                <div class="box-body">
                  <?php
                  echo ListView::widget([
                      'dataProvider' => $ha,
                      'itemView' => '/group/_item',
                      'layout' => '{items}',
                  ]);
                  ?>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="box box-danger">
                <div class="box-header with-border">
                  <h3 class="box-title">ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ [EB4 หน่วยงานมีมาตรการ และวางระบบเพื่อส่งเสริมความโปร่งใสในการจัดซื้อจัดจ้างและการจัดหาพัสดุ ปีงบประมาณ พ.ศ. 2564]</h3>
                </div>
                <div class="box-body">
                  <?php
                  echo ListView::widget([
                      'dataProvider' => $hadc,
                      'itemView' => '/group/_hadc',
                      'layout' => '{items}',
                  ]);
                  ?>
                </div>
              </div>
            </div>

            <div class="col-md-12">
              <div class="box box-danger">
                <div class="box-header with-border">
                  <h3 class="box-title">ตัวชี้วัดที่ 2 การจัดซื้อจัดจ้างและการจัดหาพัสดุ [EB5 หน่วยงานมีการสรุปผลการดำเนินการจัดซื้อจัดจ้างในรอบเดือน ประจำปีงบประมาณ พ.ศ. 2564]</h3>
                </div>
                <div class="box-body">
                  <?php
                  echo ListView::widget([
                      'dataProvider' => $hadcc,
                      'itemView' => '/group/_hadcc',
                      'layout' => '{items}',
                  ]);
                  ?>
                </div>
              </div>
            </div>

            <div class="col-md-12">
              <div class="box box-danger">
                <div class="box-header with-border">
                  <h3 class="box-title">ตัวชี้วัดที่ 3 การบริหารและพัฒนาทรัพยากรบุคคล [EB8 หน่วยงานมีการรายงานการประเมินและเกี่ยวกับการประเมินผลการปฏิบัติราชการประจำปีของบุคลากรในหน่วยงาน และเปิดเผยผลการปฏิบัติราชการ ระดับดีเด่น และระดับดีมาก ในที่เปิดเผยให้ทราบ รอบปีงบประมาณที่ผ่านมา และรอบปีงบประมาณ]</h3>
                </div>
                <div class="box-body">
                  <?php
                  echo ListView::widget([
                      'dataProvider' => $hade,
                      'itemView' => '/group/_hade',
                      'layout' => '{items}',
                  ]);
                  ?>
                </div>
              </div>
            </div>


        </div>
    </div>
