<template>
  <div id="app">
    <el-container v-if="$route.meta.keepAlive" class="wrapper">
        <el-header class="header">
            <keep-alive>
                <!--导航栏-->
              <Header></Header>
            </keep-alive>
        </el-header>
        <el-container class="main">
            <el-aside width="20%" style="background-color: gray">
                <!--侧边栏-->
                <keep-alive>
                    <nav-menu></nav-menu>
                </keep-alive>
            </el-aside>
            <el-main>
                <router-view>

                </router-view>
            </el-main>
        </el-container>
        <el-footer class="footer">
            <keep-alive>
                <Footer></Footer>
            </keep-alive>
        </el-footer>
    </el-container>
    <!--登陆页-->
      <router-view v-if="!$route.meta.keepAlive">

      </router-view>
  </div>
</template>

<script>
import Header from '@/components/Header'
import Footer from './components/Footer'
import NavMenu from "./components/NavMenu";
export default {
  name: 'App',
    components: {
      Header,
      NavMenu,
      Footer
    }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  position:absolute;
  top:0;
  right:0;
  bottom:0;
  left:0;
}
.wrapper{display: flex;flex-direction: column;min-height: 100%;}
.header{flex: 0;}
.main{padding: 0px;}
.footer{padding: 0px;}
.el-main {padding: 0px}

</style>
