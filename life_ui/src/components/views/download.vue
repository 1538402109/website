<template>
  <el-row class="commonMain">
    <el-col :span="24">
      <div class="content_header">1234567</div>
    </el-col>
    <el-col :span="24" class="downloadNav">
      <span>1222222222222</span>
      <span>1222222222222</span>
      <span>1222222222222</span>
      <span>1222222222222</span>
    </el-col>
    <el-row>
      <el-col :span="24">
        <ul class="navList downloadList">
          <li>
            <span>12212</span>
            <span>3333</span>
            <span>66666</span>
          </li>
          <li>
            <span>12212</span>
            <span>3333</span>
            <span>66666</span>
          </li>
          <li>
            <span>12212</span>
            <span>3333</span>
            <span>66666</span>
          </li>
        </ul>
      </el-col>
    </el-row>
  </el-row>
</template>

<script>
  export default {
    name: "download",
    data() {
      return {
        activeName: 'second',
        tableData: [{
          date: '2016-05-02',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1518 弄'
        }, {
          date: '2016-05-04',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1517 弄'
        }, {
          date: '2016-05-01',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1519 弄'
        }, {
          date: '2016-05-03',
          name: '王小虎',
          address: '上海市普陀区金沙江路 1516 弄'
        }]
      }
    },
    methods: {
      test() {
        console.log(1234);
      }
    }
  }
</script>

<style scoped>

</style>
