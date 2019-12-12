<template>
  <el-row>
    <el-col :span="24">
      <div class="grid-content bg-purple">
        <ul class="navList">
          <li v-for="count in 6" >
            <a href="">
              <span>这是第{{count}}次循环</span>
            </a>
          </li>
        </ul>
      </div>
    </el-col>
  </el-row>
</template>

<script>
export default {
  name: "NavMenu",
  methods: {
  }
}
</script>

<style scoped>

</style>
