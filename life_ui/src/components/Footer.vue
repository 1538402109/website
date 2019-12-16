<template>
  <el-col :span="24">
    <el-row type="flex" class="row-bg" justify="space-around">
      <el-col :span="12">
        <el-row type="flex" class="row-bg" justify="space-around">
          <el-col :span="4" class="footerStyle" v-for="(item,index) in footerList" :key="index">
            <router-link :to="{path:`${item.url}`}"><span>{{item.name}}</span></router-link>
            <p v-for="(val,indexs) in item.list">
              <router-link :to="{path:`${val.url}`}">{{val.name}}</router-link>
            </p>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="24">
        <div class="grid-content bg-purple-dark">版权</div>
      </el-col>
    </el-row>
  </el-col>
</template>

<script>
export default {
  name: "Footer",
  data () {
    return {
      footerList: {}
    }
  },
  created () {
    this.$axios.get('/footer').then(response => {
      if (response.data.code === 200 && response.data.data.length > 0) {
        this.footerList = response.data.data
      }
    })
  }
}
</script>

<style scoped>
  .clear {
    clear: both;
  }
  .footerStyle {
    text-align: left;
  }
  .footerStyle a {
    text-decoration: none;
    color:black
  }
  .footerStyle a span {
    font-size:14px;
    font-weight: bolder;
  }
  .footerStyle p a {
    font-size: 12px;
  }
</style>
