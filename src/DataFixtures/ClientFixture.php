<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\Client;

class ClientFixture extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        // $product = new Product();
        // $manager->persist($product);
        for($i=0; $i < 100; $i++) {
            $data = new Client();
            $data->setFirstName("FirstName ".$i);
            $data->setLastName("LastName ".$i);
            $manager->persist($data);
        }

        $manager->flush();
    }
}