from django.db import models

# Create your models here.
class Users(models.Model):
    email = models.CharField(max_length=127, null = False)
    followed_date = models.DateTimeField(auto_created=True)

    class Meta:
        db_table = 'users'
        managed=False

class ArcicleDomain(models.Model):
    domain_name = models.TextField(max_length=127, null = False)
    
    class Meta:
        db_table = 'article_domain'
        managed=False

class ArticlePath(models.Model):
    domain_id = models.ForeignKey(ArcicleDomain, on_delete =models.DO_NOTHING, related_name ="domain_path", db_column="domain_id")
    path = models.CharField(max_length=127, null= False)

class ArticleInfo(models.Model):
    title = models.CharField(max_length=127, null = False)
    url = models.CharField(max_length=127, null = False)
    domain_id = models.ForeignKey(ArcicleDomain, on_delete =models.DO_NOTHING, related_name ="domain_related_article", db_column="domain_id")
    sim_hash_value = models.IntegerField(null=False)
    published_at = models.DateTimeField()

    class Meta:
        db_table = 'article_info'
        managed = False

class SubscribeInfo(models.Model):
    user_id = models.ForeignKey(Users, on_delete = models.CASCADE, related_name ="user_subscribe_info", db_column="user_id")
    domain_id = models.ForeignKey(ArcicleDomain, on_delete = models.CASCADE, related_name ="domain_subscribe_info", db_column="domain_id")

    class Meta:
        db_table = 'subscribe_info'
        managed = False
    