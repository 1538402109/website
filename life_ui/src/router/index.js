import Vue from 'vue'
import Router from 'vue-router'
import Login from '@/components/views/Login'
import index from '@/components/views/index'

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
  ]
})
