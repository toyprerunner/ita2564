<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use yii\data\SqlDataProvider;
use app\models\HaDocuments;
use app\models\HadocumentsSearch;
use app\models\Group;
use app\models\GroupSearch;

class SiteController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex()
    {
        $searchModel = new GroupSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->pagination->pageSize = 10;
        $dataProvider->sort->defaultOrder = ['id' => SORT_ASC];

        $ha = $searchModel->searchHa();
        $ha->pagination->pageSize = 10;
        $ha->sort->defaultOrder = ['id' => SORT_ASC];

        $had = $searchModel->searchHad();
        $had->pagination->pageSize = 29;
        $had->sort->defaultOrder = ['id' => SORT_ASC];

        $hadc = $searchModel->searchHadc();
        $hadc->pagination->pageSize = 20;
        $hadc->sort->defaultOrder = ['id' => SORT_ASC];

        $hadcc = $searchModel->searchHadcc();
        $hadcc->pagination->pageSize = 15;
        $hadcc->sort->defaultOrder = ['id' => SORT_ASC];

        $hade = $searchModel->searchHade();
        $hade->pagination->pageSize = 10;
        $hade->sort->defaultOrder = ['id' => SORT_ASC];

        //test send mail
        //$this->sendMail('ikkdev@gmail.com','Your Fullname');

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'ha' => $ha,
            'had' => $had,
            'hadc' => $hadc,
            'hadcc' => $hadcc,
            'hade' => $hade,
        ]);
    }

    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        } else {
            return $this->render('contact', [
                'model' => $model,
            ]);
        }
    }

    public function actionAbout()
    {
        return $this->render('about');
    }

    public function sendMail($email, $fullname)
    {
        Yii::$app->mailer
            ->compose('@app/mail/layouts/register', [
                'fullname' => $fullname
            ])
            ->setFrom(['chulatatnarin@gmail.com' => 'Namyuen Hospital'])
            ->setTo($email)
            ->setSubject('ยินดีต้อนรับสู่โรงพยาบาลน้ำยืน 2562')
            ->attach(Yii::getAlias('@webroot') . '/attach/' . 'brochure.pdf')
            //->attach(Yii::getAlias('@webroot').'/attach/'.'Poster.pdf')
            ->send();
    }
}
