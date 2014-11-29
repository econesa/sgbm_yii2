<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\BMMovimiento */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="bmmovimiento-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'bienmueble_id')->textInput() ?>

    <?= $form->field($model, 'dependencia_id')->textInput() ?>

    <?= $form->field($model, 'concepto_id')->textInput() ?>

    <?= $form->field($model, 'fecha')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
