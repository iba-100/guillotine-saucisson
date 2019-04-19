<?php

namespace App\Controller;

use App\Entity\Gift\Gift;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class GiftController extends AbstractController
{
public function index(Request $request)
{


$gift = new Gift();


$form = $this->createFormBuilder($gift)
    ->add('lastname', TextType::class)
    ->add('phone', NumberType::class)
    ->add('firstname', TextType::class)
    ->add('message', TextType::class)
    ->add('email', TextType::class)
    ->add('save', SubmitType::class, ['label' => 'Create new gift'])
    ->getForm();

    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {

        $gift = $form->getData();
        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($gift);
        $entityManager->flush();

        return $this->redirectToRoute('toto');
    }


    return $this->render('gift/new.html.twig', [
    'form' => $form->createView(),
]);
}

public function lotery(){
    $em = $this->getDoctrine()->getManager();
    $connection = $em->getConnection();
    $statement = $connection->prepare("SELECT * from gift order by RAND() limit 1");
    $statement->execute();
    $results = $statement->fetchAll();
    echo "<h1> LE GAGNANT EST : </h1>". $results[0]['email'];
    echo "<h1> PRENOM  : </h1>". $results[0]['firstname'];
    echo "<h1> NOM  </h1>". $results[0]['lastname'];
  
    exit();
}
}
