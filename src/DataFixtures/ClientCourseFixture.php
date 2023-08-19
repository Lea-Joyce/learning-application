<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\ClientCourse;

class ClientCourseFixture extends Fixture
{

    public function load(ObjectManager $manager): void
    {
        for($i = 1; $i <= 100; $i++) {
            for($j = 1; $j <= 1000; $j++) {
                if (rand(0, 1)) {
                    $clientCourse = new ClientCourse();
                    $clientCourse->setClientId($i);
                    $clientCourse->setCourseId($j);
                    $manager->persist($clientCourse);
                }
            } 
        }

        $manager->flush();
    }
}