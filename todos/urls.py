from django.conf.urls import  url
from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    #what is needed to accept the id params
    url(r'^details/(?P<id>\w{0,50})/$', views.details),
    #add some todo functions
    url(r'^add', views.add, name='add'),
    
    
]