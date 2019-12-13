<template>
  <el-row class="commonMain">
    <el-col :span="24">
      <div class="content_header">1234567</div>
    </el-col>
    <el-col :span="24">
      <el-row>
        <el-col :span="4">
          <div class="grid-content bg-purple">1111111</div>
        </el-col>
        <el-col :span="20">
          <el-row>
            <el-col :span="24"><div class="grid-content bg-purple-dark">99999</div></el-col>
          </el-row>
          <el-row>
            <el-col :span="24"><div class="grid-content bg-purple-dark">88888/8</div></el-col>
          </el-row>
        </el-col>
      </el-row>
    </el-col>
    <el-col :span="24">
      <el-row>
        <el-col :span="4">
          <div class="grid-content bg-purple">1111111</div>
        </el-col>
        <el-col :span="20">
          <el-col :span="24">
            <el-row>
              <el-col :span="4">
                <div class="grid-content bg-purple">00000</div>
              </el-col>
              <el-col :span="16">
                <div class="grid-content bg-purple">1111111111</div>
              </el-col>
              <el-col :span="4">
                <div class="grid-content bg-purple">2222222222</div>
              </el-col>
            </el-row>
          </el-col>
          <el-col :span="24">
            <el-row>
              <el-col :span="24">
                <div class="grid-content bg-purple">00000</div>
              </el-col>
            </el-row>
          </el-col>
          <el-col :span="24">
            <el-row>
              <el-col :span="24">
                <div class="grid-content bg-purple">66666</div>
              </el-col>
            </el-row>
          </el-col>
        </el-col>
      </el-row>
    </el-col>
  </el-row>
</template>

<script>
    export default {
        name: "life"
    }
</script>

<style scoped>

</style>
