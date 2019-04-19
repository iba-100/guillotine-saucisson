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
    ->add('email', TextType::class)
    ->add('firstname', TextType::class)
    ->add('lastname', TextType::class)
    ->add('phone', NumberType::class)
    ->add('message', TextareaType::class)
    ->add('save', SubmitType::class, ['label' => 'Create new gift'])
    ->getForm();

    $form->handleRequest($request);

    if ($form->isSubmitted() && $form->isValid()) {
        // $form->getData() holds the submitted values
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
}
