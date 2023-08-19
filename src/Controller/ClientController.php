<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\Client;
use Symfony\Component\HttpFoundation\Request;

class ClientController extends AbstractController
{
    
    #[Route('/clients/search', name: 'client_search')]   
    public function searchClient(EntityManagerInterface $entityManager, Request $request): Response
    {
        $firstname =$request->query->get('firstname');
        $clients = $entityManager->createQuery(
                'SELECT c
                FROM App\Entity\Client c
                WHERE c.firstname LIKE :firstname'
            )->setParameter('firstname', '%'.$firstname.'%')->getResult();
        return $this->render('clients/search.html.twig', [
            'clients' => $clients,        
        ]);
    }

    
    #[Route('/clients/{id}', name: 'client_information')]   
    public function findOne(Client $client): Response
    {
        return $this->render('clients/find.one.html.twig', [
            'lastName' => $client->getLastname(),
            'firstName' => $client->getFirstname(),           
        ]);
    }

    #[Route('/clients', name: 'client_list')]
    public function getAll(EntityManagerInterface $entityManager): Response
    {
        $clients = $entityManager->createQuery(
            'SELECT c
            FROM App\Entity\Client c')
            ->getResult();
        return $this->render('clients/all.html.twig', [
            'clients' => $clients,
        ]);
    }

    #[Route('/clients/{clientId}/courses', name: 'clientcourse_list')]
    public function getCourses(EntityManagerInterface $entityManager, $clientId): Response
    {
        $client = $entityManager->getRepository(Client::class)->find($clientId);

        $query = $entityManager->createQuery(
            'SELECT c
            FROM App\Entity\ClientCourse cc, App\Entity\Course c
            WHERE cc.course_id = c.id AND cc.client_id = :id'
        )->setParameter('id', $clientId)
        ->getResult();

        return $this->render('clients/courses.html.twig', [
            'client' => $client,
            'courses' => $query,
        ]);
    }
}

?>