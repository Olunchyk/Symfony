<?php

namespace ShopBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;

class IndexController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
        $products = $this->get('doctrine')->getRepository('ShopBundle:Product', 'default')->findAll();
        $categories = $this->get('doctrine')->getRepository('ShopBundle:Category', 'default')->findAll();

        return $this->render(
            'main/main.html.twig',
            array('products' => $products, 'categories' => $categories)
        );
    }

    /**
     * @Route("/category/{categoryName}")
     */
    public function getProductsByCategory($categoryName)
    {
        $categories = $this->get('doctrine')->getRepository('ShopBundle:Category', 'default')->findAll();
        $category = $this->get('doctrine')->getRepository('ShopBundle:Category', 'default')->findOneBy(['name' => $categoryName]);

        return $this->render(
            'main/category.html.twig',
            array('categories' => $categories, 'category' => $category)
        );
    }
    /**
     * @Route("/product/{productId}")
     */
    public function getProduct($productId)
    {
        $product = $this->get('doctrine')->getRepository('ShopBundle:Product', 'default')->findOneBy(['id' => $productId]);

        return $this->render(
            'main/product.html.twig',
            array('product' => $product)
        );
    }
}
