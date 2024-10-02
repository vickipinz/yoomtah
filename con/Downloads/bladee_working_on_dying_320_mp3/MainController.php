<?php declare(strict_types=1);

namespace Yoomtah\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class MainController extends AbstractController {
    #[Route('/', name: 'main', methods: ['GET'])]
    public function mango(): Response {
        return new Response('my mango is to blow up', 200);
    }
}