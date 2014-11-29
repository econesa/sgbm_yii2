<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\MovimientoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Traspaso de Bienes Muebles';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bmmovimiento-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Realizar Traspaso', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'bienmueble_id',
            'dependencia_id',
            'concepto_id',
            'fecha',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
