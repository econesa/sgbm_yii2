<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bm_tipo".
 *
 * @property integer $id
 * @property string $codigo
 * @property string $nombre
 * @property integer $status
 */
class BMTipo extends \yii\db\ActiveRecord
{
    const STATUS_ACTIVE = 1;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bm_tipo';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nombre'], 'required'],
            [['status'], 'integer'],
            [['codigo'], 'string', 'max' => 11],
            [['nombre'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'codigo' => 'Codigo',
            'nombre' => 'Nombre',
            'status' => 'Status',
        ];
    }
}
