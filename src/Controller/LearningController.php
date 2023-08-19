<?php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\Client;
use App\Entity\Course;
use App\Entity\ClientCourse;

class LearningController extends AbstractController
{
    #[Route('/learning/application', name: 'learning_application')]
    public function number(): Response
    {
        return $this->render('base.html.twig');
    }
}


?>