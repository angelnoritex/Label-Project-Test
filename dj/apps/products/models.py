from django.db import models

# Create your models here.
from django.db import models
import random
import string
# Create your models here.



class Products(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField()
    price = models.DecimalField(max_digits=5, decimal_places=2)
    stock = models.IntegerField()
    #image = models.ImageField(upload_to='products/images/')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    # code fiel random
    code = models.CharField(max_length=100, unique=True)
    
    def random_code():
        return ''.join(random.choices(string.ascii_uppercase + string.digits, k=6))

    def __str__(self):
        return self.name
    
    def save(self, *args, **kwargs):
        self.code = Products.random_code()
        super(Products, self).save(*args, **kwargs)

