<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\BMMovimiento */

$this->title = 'Traspaso de Bienes Muebles';
$this->params['breadcrumbs'][] = ['label' => 'Traspaso de B. M.', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bmmovimiento-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
