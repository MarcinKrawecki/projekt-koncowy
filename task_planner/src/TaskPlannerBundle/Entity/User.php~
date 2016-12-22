<?php
/**
 * Created by PhpStorm.
 * User: marcin
 * Date: 22.12.16
 * Time: 10:09
 */

namespace TaskPlannerBundle\Entity;
use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;
/**
 * @ORM\Entity
 * @ORM\Table(name="fos_user")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     *
     */
    protected $id;

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * @ORM\OneToMany(targetEntity="Task", mappedBy="User")
     */
    private $task;

    /**
    * @ORM\OneToMany(targetEntity="Category", mappedBy="User")
    */
    private $category;

}