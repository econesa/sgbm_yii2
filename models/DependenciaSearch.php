<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Dependencia;

/**
 * DependenciaSearch represents the model behind the search form about `app\models\Dependencia`.
 */
class DependenciaSearch extends Dependencia
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'sede_id', 'u_adm_id', 'genero_id'], 'integer'],
            [['cod', 'nombre', 'nombre_corto'], 'safe'],
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
        $query = Dependencia::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        if (!($this->load($params) && $this->validate())) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'sede_id' => $this->sede_id,
            'u_adm_id' => $this->u_adm_id,
            'genero_id' => $this->genero_id,
        ]);

        $query->andFilterWhere(['like', 'cod', $this->cod])
            ->andFilterWhere(['like', 'nombre', $this->nombre])
            ->andFilterWhere(['like', 'nombre_corto', $this->nombre_corto]);

        return $dataProvider;
    }
}
