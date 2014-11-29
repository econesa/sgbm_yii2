<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\BienMueble */

$this->title = 'Registrar Bien Mueble';
$this->params['breadcrumbs'][] = ['label' => 'Bienes Muebles', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="bien-mueble-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'bmclases' => $bmclases,
        'bmtipos'  => $bmtipos,
    ]) ?>

</div>
