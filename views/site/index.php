<?php
use yii\helpers\Html;

/* @var $this yii\web\View */
$this->title = 'Sistema de gestiòn de bienes muebles';
?>
<div class="site-index">

    <div class="body-content">

        <div class="row">
            <div class="col-lg-12">

                <div class="col-md-6">
                    <div class="ul01">
                        <p>Seleccione una Operación</p>
                        <ul>
                            <li><?php echo Html::a('Listado de Bienes Muebles', array('/bien-mueble')); ?></li>
                            <li><?php echo Html::a('Traspaso de Bienes', array('/movimiento')); ?></li>
                            <li><?php echo Html::a('Inventario de Bienes (Formulario B.M. 1)', array('/bm1')); ?></li>
                            <li><?php echo Html::a('Resumen de la Cuenta de Bienes (Formulario B.M. 4)', array('/formBm4')); ?></li>
                            <li><?php echo Html::a('Relación de Bienes Faltantes (Formulario B.M. 3)', array('/formBm3')); ?></li>
                            <li><?php echo Html::a('Relación de Movimiento de Bienes (Formulario B.M. 2)', array('/formBm2')); ?></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-6">
                  <h2>Heading</h2>

                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                    fugiat nulla pariatur.</p>

                  <p><a class="btn btn-default" href="http://www.yiiframework.com/doc/">Yii Documentation &raquo;</a></p>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <h2>Heading</h2>

            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                fugiat nulla pariatur.</p>

            <p><a class="btn btn-default" href="http://www.yiiframework.com/forum/">Yii Forum &raquo;</a></p>
        </div>


        <div class="col-lg-4">
            <h2>Heading</h2>

            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
                fugiat nulla pariatur.</p>

            <p><a class="btn btn-default" href="http://www.yiiframework.com/extensions/">Yii Extensions &raquo;</a></p>
        </div>



    </div>
</div>
