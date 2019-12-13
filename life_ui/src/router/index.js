import Vue from 'vue'
import Router from 'vue-router'
import Login from '@/components/views/Login'
import index from '@/components/views/index'
import circles from '@/components/views/circle'
import partner from '@/components/views/partner'
import life from '@/components/views/life'
import technical from '@/components/views/technical'
import download from '@/components/views/download'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'login',
      component: Login,
      meta: {
        keepAlive: false
      }
    },
    {
      path: '/index',
      name: 'index',
      component: index,
      meta: {
        keepAlive: true
      }
    },
    {
      path: '/circle',
      name: 'circles',
      component: circles,
      meta: {
        keepAlive: true
      }
    },
    {
      path: '/partner',
      name: 'partner',
      component: partner,
      meta: {
          keepAlive: true
      }
    },
    {
      path: '/life',
      name: 'life',
      component: life,
      meta: {
        keepAlive: true
      }
    },
    {
      path: '/technical',
      name: 'technical',
      component: technical,
      meta: {
        keepAlive: true
      }
    },
    {
      path: '/download',
      name: 'download',
      component: download,
      meta: {
        keepAlive: true
      }
    },
  ]
})
