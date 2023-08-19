<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Entity\Course;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;

class CourseController extends AbstractController
{

    #[Route('/course/search', name: 'course_search')]   
    public function searchCourse(EntityManagerInterface $entityManager, Request $request): Response
    {
        $title =$request->query->get('title');
        $courses = $entityManager->createQuery(
                'SELECT c
                FROM App\Entity\Course c
                WHERE c.title LIKE :title'
            )->setParameter('title', '%'.$title.'%')->getResult();
        return $this->render('courses/searchcourse.html.twig', [
            'courses' => $courses,        
        ]);
    }

    #[Route('/course1/{id}', name: 'create_course1')] 
    public function createCourse1(EntityManagerInterface $entityManager): Response
    {
        $course = new Course();
        $course->setTitle('Brain-Gym');
        $course->setContent('Brain-Gym is the core of edu-kinesiology. In the advanced training Brain-Gym I you will learn the kinesiological muscle test, noticing and other valuable exercises from the field of educational kinesiology. The focus of the training is on crossing the centre line as a basis for seeing, hearing and moving the body on both sides.');

        // tell Doctrine you want to (eventually) save the Product (no queries yet)
        $entityManager->persist($course);

        // actually executes the queries (i.e. the INSERT query)
        $entityManager->flush();

        return new Response('Saved new course with id '.$course->getId());
    }

    #[Route('/course2/{id}', name: 'create_course2')] 
    public function createCourse2(EntityManagerInterface $entityManager): Response
    {
        $course = new Course();
        $course->setTitle('Bobath-Course');
        $course->setContent('Learn about the world-renowned therapy concept for treating people with cerebral movement disorders in theory and practice and get certified as a trained Bobath therapist.');

        // tell Doctrine you want to (eventually) save the Product (no queries yet)
        $entityManager->persist($course);

        // actually executes the queries (i.e. the INSERT query)
        $entityManager->flush();

        return new Response('Saved new course with id '.$course->getId());
    }



    #[Route('/courses/{id}', name: 'course_information')]
    public function findOne(Course $course): Response
    {
        return $this->render('clients/find.one.html.twig', [
            'title' => $course->getTitle(),
            'content' => $course->getContent(),
        ]);
    }

    #[Route('/courses', name: 'course_list')]
    public function getAll(EntityManagerInterface $entityManager): Response
    {
        $courses = $entityManager->createQuery(
            'SELECT c
            FROM App\Entity\Course c')
            ->getResult();
        return $this->render('courses/all.html.twig', [
            'courses' => $courses,
        ]);
    }

    #[Route('/courses/{courseId}/clients', name: 'courseclient_list')]
    public function getClients(EntityManagerInterface $entityManager, $courseId): Response
    {
       /* $course = $entityManager->createQuery(
            'SELECT c
            FROM App\Entity\Course c
            WHERE c.id = :id'
        )->setParameter('id', $courseId)
        ->getResult();*/

        $course = $entityManager->getRepository(Course::class)->find($courseId);

        $query = $entityManager->createQuery(
            'SELECT c
            FROM App\Entity\ClientCourse cc, App\Entity\Client c
            WHERE cc.client_id = c.id AND cc.course_id = :id'
        )->setParameter('id', $courseId)
        ->getResult();

        return $this->render('courses/clients.html.twig', [
            'course' => $course,
            'clients' => $query,
        ]);
    }
}

?>