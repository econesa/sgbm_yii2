<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $model app\models\BienMueble */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="bien-mueble-form">

    <?php
    $clasificaciones = ArrayHelper::map($bmclases, 'id', 'nombre');
    $tipos = ArrayHelper::map($bmtipos, 'id', 'nombre');

    $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'codigo')->textInput(['maxlength' => 6]) ?>
    <?= $form->field($model, 'clasificacion_id')->dropDownList($clasificaciones, ['prompt'=>'']) ?>
    <?= $form->field($model, 'tipo_id')->dropDownList($tipos, ['prompt'=>''])->label('Tipo') ?>
    <?= $form->field($model, 'descripcion')->textArea(['maxlength' => 500]) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Guardar' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
