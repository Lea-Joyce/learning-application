<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Course;

class CourseFixture extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);
        for($i=0; $i < 1000; $i++) {
            $data = new Course();
            $data->setTitle("Title ".$i);
            $data->setContent("Content ".$i);
            $manager->persist($data);
        }
        $manager->flush();
    }
}
