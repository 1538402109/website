<template>
    <el-row>
        <el-col :span="24">
          <el-row>
            <el-col :span="4"><div class="grid-content bg-purple">12345</div></el-col>
            <el-col :span="16">
              <el-row>
                <el-col :span="4"><div class="grid-content bg-purple">45566677</div></el-col>
                <el-col :span="16"><div class="grid-content bg-purple-light">777777</div></el-col>
                <el-col :span="4"><div class="grid-content bg-purple">788888</div></el-col>
              </el-row>
            </el-col>
            <el-col :span="4"><div class="grid-content bg-purple"></div></el-col>
          </el-row>
        </el-col>
    </el-row>
</template>

<script>
    export default {
        name: "Header"
    }
</script>

<style scoped>

</style>
