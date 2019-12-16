<template>
  <el-row>
    <el-col :span="24">
      <div class="grid-content bg-purple">
        <ul class="navMenuList">
          <li v-for="(item,index) in menuList" >
            <router-link :to="{path:item.url}">{{item.name}}</router-link>
          </li>
        </ul>
      </div>
    </el-col>
  </el-row>
</template>

<script>
export default {
  name: "NavMenu",
  data () {
      return {
          menuList : {},
      }
  },
  created () {
    this.$axios.get('/navMenu').then(response => {
      if (response.data.code === 200 && response.data.data.length > 0) {
        this.menuList = response.data.data
      }
     })
  },
  methods: {
  }
}
</script>

<style scoped>
.navMenuList{
  list-style: none;
  margin-top: 0px;
  float:right;
  padding: 20px;
  box-shadow: -8px 0px 10px #888888;
}
.navMenuList li{
  padding-bottom: 25px;
}
.navMenuList li a {
  text-decoration: none;
  color: #666666;
}
</style>
