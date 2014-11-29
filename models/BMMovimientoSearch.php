<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\BMMovimiento;

/**
 * BMMovimientoSearch represents the model behind the search form about `app\models\BMMovimiento`.
 */
class BMMovimientoSearch extends BMMovimiento
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'bienmueble_id', 'dependencia_id', 'concepto_id'], 'integer'],
            [['fecha'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = BMMovimiento::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'bienmueble_id' => $this->bienmueble_id,
            'dependencia_id' => $this->dependencia_id,
            'concepto_id' => $this->concepto_id,
            'fecha' => $this->fecha,
        ]);

        return $dataProvider;
    }
}
