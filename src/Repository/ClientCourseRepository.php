<?php

namespace App\Repository;

use App\Entity\ClientCourse;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<ClientCourse>
 *
 * @method ClientCourse|null find($id, $lockMode = null, $lockVersion = null)
 * @method ClientCourse|null findOneBy(array $criteria, array $orderBy = null)
 * @method ClientCourse[]    findAll()
 * @method ClientCourse[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ClientCourseRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ClientCourse::class);
    }

//    /**
//     * @return ClientCourse[] Returns an array of ClientCourse objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('c.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?ClientCourse
//    {
//        return $this->createQueryBuilder('c')
//            ->andWhere('c.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
