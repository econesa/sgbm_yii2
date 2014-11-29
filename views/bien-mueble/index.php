<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\BienMuebleSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Bien Muebles';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bien-mueble-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Bien Mueble', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'codigo',
            'descripcion',
            'clasificacion_id',
            'tipo_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
