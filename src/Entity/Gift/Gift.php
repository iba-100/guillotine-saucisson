<?php

declare(strict_types=1);

namespace App\Entity\Gift;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\ORM\Mapping\MappedSuperclass;

/**
 * Gift.
 * @ORM\Table(name="gift")
 * @MappedSuperclass
 */
class Gift
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="lastname", type="string", length=60, unique=true)
     */
    private $lastname;

     /**
     * @var string
     *
     * @ORM\Column(name="phone", type="integer", length=10, unique=true)
     */
    private $phone;

    /**
     * @var string
     *
     * @ORM\Column(name="price", type="string", length=255)
     */
    private $firstname;


    /**
     * @var string
     *
     * @ORM\Column(name="message", type="string", length=255)
     */
    private $message;


    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=60, unique=true)
     */
    private $email;


    /**
     * Get id.
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set name.
     *
     * @param string $lastname
     *
     * @return Gift
     */
    public function setLastname($lastname)
    {
        $this->lastname = $lastname;

        return $this;
    }

    /**
     * Get lastname.
     *
     * @return string
     */
    public function getLastname()
    {
        return $this->lastname;
    }


    /**
     * Set name.
     *
     * @param string $message
     *
     * @return Gift
     */
    public function setMessage($message)
    {
        $this->lastname = $message;

        return $this;
    }

    /**
     * Get Message
     *
     * @return string
     */
    public function getMessage()
    {
        return $this->message;
    }

     /**
     * Set firstname.
     *
     * @param string $firstname
     *
     * @return Gift
     */
    public function setFirstname($firstname)
    {
        $this->firstname = $firstname;

        return $this;
    }

    /**
     * Get name.
     *
     * @return string
     */
    public function getFirstname()
    {
        return $this->firstname;
    }


    /**
     * Set phone.
     *
     * @param string $phone
     *
     * @return Gift
     */
    public function setPhone($phone)
    {
        $this->phone = $phone;

        return $this;
    }

    /**
     * Get phone.
     *
     * @return Gift
     */
    public function getPhone()
    {
        return $this->phone;
    }


     /**
     * Set email.
     *
     * @param string $email
     *
     * @return Gift
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Get email.
     *
     * @return Gift
     */
    public function getEmail()
    {
        return $this->email;
    }
}
