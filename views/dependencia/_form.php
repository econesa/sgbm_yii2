<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Dependencia */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="dependencia-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'cod')->textInput(['maxlength' => 8]) ?>

    <?= $form->field($model, 'sede_id')->textInput() ?>

    <?= $form->field($model, 'u_adm_id')->textInput() ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => 120]) ?>

    <?= $form->field($model, 'nombre_corto')->textInput(['maxlength' => 55]) ?>

    <?= $form->field($model, 'genero_id')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
