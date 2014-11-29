<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "dependencia".
 *
 * @property integer $id
 * @property string $cod
 * @property integer $sede_id
 * @property integer $u_adm_id
 * @property string $nombre
 * @property string $nombre_corto
 * @property integer $genero_id
 */
class Dependencia extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'dependencia';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cod', 'sede_id', 'nombre', 'nombre_corto', 'genero_id'], 'required'],
            [['sede_id', 'u_adm_id', 'genero_id'], 'integer'],
            [['cod'], 'string', 'max' => 8],
            [['nombre'], 'string', 'max' => 120],
            [['nombre_corto'], 'string', 'max' => 55]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'cod' => 'Cod',
            'sede_id' => 'Sede ID',
            'u_adm_id' => 'U Adm ID',
            'nombre' => 'Nombre',
            'nombre_corto' => 'Nombre Corto',
            'genero_id' => 'Genero ID',
        ];
    }
}
