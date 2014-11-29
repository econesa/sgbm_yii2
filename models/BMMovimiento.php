<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bm_movimiento".
 *
 * @property integer $id
 * @property integer $bienmueble_id
 * @property integer $dependencia_id
 * @property integer $concepto_id
 * @property string $fecha
 */
class BMMovimiento extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bm_movimiento';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['bienmueble_id', 'dependencia_id', 'concepto_id', 'fecha'], 'required'],
            [['bienmueble_id', 'dependencia_id', 'concepto_id'], 'integer'],
            [['fecha'], 'safe']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'bienmueble_id' => 'Bienmueble ID',
            'dependencia_id' => 'Dependencia ID',
            'concepto_id' => 'Concepto ID',
            'fecha' => 'Fecha',
        ];
    }

    public function getBienmueble()
    {
        return $this->hasOne(BienMueble::className(), ['id' => 'bienmueble_id']);
    }

    public function getDependencia()
    {
        return $this->hasOne(Dependencia::className(), ['id' => 'dependencia_id']);
    }
}
