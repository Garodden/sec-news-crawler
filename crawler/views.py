from django.shortcuts import render

from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
import time
# Create your views here.


from crawler.models import (
    Users,
    ArcicleDomain,
    ArticleInfo,
    SubscribeInfo,
)

class Articles(APIView):
    def post(self, request):
        result = []
        return Response(result, status = status.HTTP_200_OK)
    