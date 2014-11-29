<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bienmueble".
 *
 * @property integer $id
 * @property string $codigo
 * @property string $descripcion
 * @property integer $clasificacion_id
 * @property integer $tipo_id
 */
class BienMueble extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bienmueble';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['codigo', 'clasificacion_id', 'tipo_id'], 'required'],
            [['clasificacion_id', 'tipo_id'], 'integer'],
            [['codigo'], 'string', 'max' => 6],
            [['descripcion'], 'string', 'max' => 500],
            [['codigo'], 'unique']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'Bien Mueble',
            'codigo' => 'Código',
            'descripcion' => 'Descripción',
            'clasificacion_id' => 'Clasificación',
            'tipo_id' => 'Tipo',
        ];
    }

    /**
     * Methods
     */

    public function getClasificacion()
    {
        return $this->hasOne(BMClasificacion::className(), ['id' => 'clasificacion_id']);
    }

    public function getTipo()
    {
        return $this->hasOne(BMTipo::className(), ['id' => 'tipo_id']);
    }
}
