<?php

namespace App\Controllers;

use CodeIgniter\Exceptions\PageNotFoundException;

class Pages extends BaseController
{
    public function index()
    {
        // return view('welcome_message');
        $title = 'Welcome to CI 4 + Smarty';

        // return view('welcome_message', ['title' => 'Welcome to CI 4']);
        return $this->smartyDisplay(
            view: 'welcome_message',
            params: compact('title')
        );
    }

    public function show($page = 'home')
    {
        if (!is_file(APPPATH . 'Views/pages/' . $page . '.tpl')) {
            // Whoops, we don't have a page for that!
            throw new PageNotFoundException($page);
        }

        // $data['title'] = ucfirst($page); // Capitalize the first letter

        // return  view('pages/' . $page, $data);

        $title = ucfirst($page); // Capitalize the first letter;

        return $this->smartyDisplay(
            view: 'pages/' . $page,
            params: compact('title')
        );
    }
}
