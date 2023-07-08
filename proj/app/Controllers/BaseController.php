<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\CLIRequest;
use CodeIgniter\HTTP\IncomingRequest;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;
use Smarty;

/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security be sure to declare any new methods as protected or private.
 */
abstract class BaseController extends Controller
{
    /**
     * Instance of the main Request object.
     *
     * @var CLIRequest|IncomingRequest
     */
    protected $request;

    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BaseController.
     *
     * @var array
     */
    protected $helpers = [];

    /**
     * Be sure to declare properties for any property fetch you initialized.
     * The creation of dynamic property is deprecated in PHP 8.2.
     */
    // protected $session;

    /**
     * Paths for Smarty template engine needed Folders
     */

    private $templateConfig = APPPATH . 'smarty/configs/';
    private $templateViewDir = APPPATH . 'Views/';
    private $templateCompileDir = WRITEPATH . 'smarty/templates_c/';
    private $templateCacheDir = WRITEPATH . 'smarty/cache/';

    // instance of smarty
    private $templateSmarty = null;

    /**
     * Constructor.
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        // Preload any models, libraries, etc, here.

        // E.g.: $this->session = \Config\Services::session();
        $this->initSmarty();
    }

    protected function smartyDisplay(string $view, array $params = [], $layout = 'layouts/default'): mixed
    {
        $this->templateSmarty->assign($params);

        if (!file_exists(APPPATH . 'Views/layouts/default.tpl')) {
            return $this->templateSmarty->display($view . '.tpl');
        }

        return $this->templateSmarty->display("extends:{$layout}.tpl|{$view}.tpl");
    }

    private function initSmarty()
    {
        $this->templateSmarty = new Smarty();

        // directories and others things
        $this->templateSmarty->setConfigDir($this->templateConfig)
            ->setTemplateDir($this->templateViewDir)
            ->setCompileDir($this->templateCompileDir)
            ->setCacheDir($this->templateCacheDir)
            // Please had this to avoid XSS 
            // with this no need to had modifier escape
            // https://github.com/smarty-php/smarty/issues/863
            // ->setDefaultModifiers(['escape:"htmlall"']); Or
            ->setEscapeHtml(true);
    }
}
