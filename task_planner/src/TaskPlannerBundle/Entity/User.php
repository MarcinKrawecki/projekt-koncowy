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


    /**
     * Add task
     *
     * @param \TaskPlannerBundle\Entity\Task $task
     * @return User
     */
    public function addTask(\TaskPlannerBundle\Entity\Task $task)
    {
        $this->task[] = $task;

        return $this;
    }

    /**
     * Remove task
     *
     * @param \TaskPlannerBundle\Entity\Task $task
     */
    public function removeTask(\TaskPlannerBundle\Entity\Task $task)
    {
        $this->task->removeElement($task);
    }

    /**
     * Get task
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getTask()
    {
        return $this->task;
    }

    /**
     * Add category
     *
     * @param \TaskPlannerBundle\Entity\Category $category
     * @return User
     */
    public function addCategory(\TaskPlannerBundle\Entity\Category $category)
    {
        $this->category[] = $category;

        return $this;
    }

    /**
     * Remove category
     *
     * @param \TaskPlannerBundle\Entity\Category $category
     */
    public function removeCategory(\TaskPlannerBundle\Entity\Category $category)
    {
        $this->category->removeElement($category);
    }

    /**
     * Get category
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getCategory()
    {
        return $this->category;
    }
}
