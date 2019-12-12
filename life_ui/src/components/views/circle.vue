<template>
    <el-row class="commonMain">
        <el-row type="flex">
            <el-col :span="24">
                <div class="content_header">1234567</div>
            </el-col>
        </el-row>
        <el-row type="flex">
            <el-col :span="24">
                <div class="circle_header">1234567</div>
            </el-col>
        </el-row>
        <div class="clear"></div>
        <el-row type="flex">
            <el-col :span="16">
                <div class="circle_first_left">111111</div>
            </el-col>
            <el-col :span="8">
                <div class="circle_first_right">222222</div>
            </el-col>
        </el-row>
        <div class="clear"></div>
        <el-row type="flex">
            <el-col :span="20" class="circle_second">
                <div class="circle_second_left">111111</div>
            </el-col>
            <el-col :span="4" class="circle_second">
                <div class="circle_second_right">222222</div>
            </el-col>
        </el-row>
        <div class="clear"></div>
        <el-row type="flex">
            <el-col :span="8" class="circle_third"><div class="grid-content bg-purple"></div></el-col>
            <el-col :span="8" class="circle_third"><div class="grid-content bg-purple-light"></div></el-col>
            <el-col :span="8" class="circle_third alone"><div class="grid-content bg-purple"></div></el-col>
        </el-row>
        <div class="clear"></div>
        <el-row type="flex">
            <el-col :span="20" class="circle_second">
                <div class="circle_second_left">111111</div>
            </el-col>
            <el-col :span="4" class="circle_second">
                <div class="circle_second_right">222222</div>
            </el-col>
        </el-row>
        <div class="clear"></div>

        <el-row type="flex">
            <el-col :span="4" class="circle_fourth">
                <img  alt="暂无图片">
            </el-col>
            <el-col :span="20" class="circle_fourth">
                <div class="">222222</div>
            </el-col>
        </el-row>

    </el-row>
</template>

<script>
    export default {
        name: "circles"
    }
</script>

<style scoped>

</style>