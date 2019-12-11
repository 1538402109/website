<template>
  <div id="app">
    <el-container v-if="$route.meta.keepAlive">
        <el-header>
            <keep-alive>
                <!--导航栏-->
                <header-nav>

                </header-nav>
            </keep-alive>
        </el-header>
        <el-container>
            <el-aside width="250px">
                <!--侧边栏-->
                <keep-alive>
                    <left></left>
                </keep-alive>
            </el-aside>
            <el-main>
                <router-view>

                </router-view>
            </el-main>
        </el-container>
        <el-footer>
            <keep-alive>
                <footer-nav>

                </footer-nav>
            </keep-alive>
        </el-footer>
    </el-container>
    <!--登陆页-->
      <router-view v-if="!$route.meta.keepAlive">

      </router-view>
  </div>
</template>

<script>
import header from './components/Header'
import left from './components/Left'
import footer from './components/Footer'
export default {
  name: 'App',
  comments: {
    headerNav: header,
    left: left,
    footNav: footer
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
  margin-top: 60px;
}
</style>
