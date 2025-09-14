package com.ecommerce.model;

public class Product {
    private int id;
    private String name;
    private String description;
    private double price;
    private int stock;

    // Full constructor (you are already using this in servlet)
    public Product(int id, String name, String description, double price, int stock) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.stock = stock;
    }

    // Getters and setters (needed for JSP)
    public int getId() { return id; }
    public String getName() { return name; }
    public String getDescription() { return description; }
    public double getPrice() { return price; }
    public int getStock() { return stock; }
}
