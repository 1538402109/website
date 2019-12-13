<template>
  <el-col :span="24">
    <el-row type="flex" class="row-bg" justify="center">
      <el-col :span="5">
        <el-row>
          <el-col :span="12">
            <ul class="navList">
              <li>111111111111111</li>
              <li>2222222</li>
              <li>33333</li>
              <li>4444444</li>
            </ul>
          </el-col>
          <el-col :span="12">
            <ul class="navList">
              <li>55555555555555</li>
              <li>6666</li>
              <li>7777</li>
              <li>88888888</li>
            </ul>
          </el-col>
        </el-row>
      </el-col>
      <el-col :span="5">
        <el-row>
          <el-col :span="12">
            <ul class="navList">
              <li>111111111111111</li>
              <li>2222222</li>
              <li>33333</li>
              <li>4444444</li>
            </ul>
          </el-col>
          <el-col :span="12">
            <ul class="navList">
              <li>55555555555555</li>
              <li>6666</li>
              <li>7777</li>
              <li>88888888</li>
            </ul>
          </el-col>
        </el-row>
      </el-col>
      <el-col :span="5">
        <el-row>
          <el-col :span="24">
            <ul class="navList footer_alone">
              <li>111111111111111</li>
              <li>111111111111111</li>
              <li>111111111111111</li>
              <li>111111111111111</li>
            </ul>
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
        name: "Footer"
    }
</script>

<style scoped>
  .clear {
    clear: both;
  }
</style>
