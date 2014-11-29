<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "bm_clasificacion".
 *
 * @property integer $id
 * @property integer $grupo
 * @property integer $subgrupo
 * @property integer $seccion
 * @property string  $nombre
 * @property integer $status
 */
class BMClasificacion extends \yii\db\ActiveRecord
{
    const STATUS_ACTIVE = 1;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'bm_clasificacion';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['grupo', 'subgrupo', 'seccion', 'nombre'], 'required'],
            [['grupo', 'subgrupo', 'seccion'], 'integer'],
            [['nombre'], 'string', 'max' => 95]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'grupo' => 'Grupo',
            'subgrupo' => 'Subgrupo',
            'seccion' => 'Seccion',
            'nombre' => 'Nombre',
        ];
    }
}
