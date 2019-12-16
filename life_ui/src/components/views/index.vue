<template>
  <el-row class="commonMain">
    <el-row>
      <el-col :span="24">
        <div class="content_header">观致人自己的社交平台</div>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="24">
        <el-row>
          <el-col :span="6">
            <div class="grid-content bg-purple">
              <el-image :src="src"></el-image>
            </div>
          </el-col>
          <el-col :span="18" class="alignment">
            <el-row>
              <el-col :span="24">
                <h3 style="text-indent:3em;">{{notice.title}}</h3>
              </el-col>
            </el-row>
            <el-row class="alignment">
              <el-col :span="24">
                <div class="">{{notice.content}}</div>
              </el-col>
            </el-row>
            <el-row>
              <el-col :span="24">
                <el-row>
                  <el-col :span="12">
                    <ul class="indexNews">
                      <li v-for="(item,index1) in indexNewsList" v-if="index1 < 5">
                        <a>{{item.title}}</a>
                        <span>一周资讯</span>
                      </li>
                    </ul>
                  </el-col>
                  <el-col :span="12">
                    <ul class="indexNews">
                      <li  v-for="(item,index1) in indexNewsList" v-if="index1 >= 5">
                        <a>{{item.title}}</a>
                        <span>一周资讯</span>
                      </li>
                    </ul>
                  </el-col>
                </el-row>
              </el-col>
            </el-row>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="24">
        <el-row>
          <el-col :span="18">
            <el-row>
              <el-col :span="12"><div class="grid-content bg-purple alignment">{{circle}}</div></el-col>
              <el-col :span="12"><div class="grid-content bg-purple-light alignright">查看更多</div></el-col>
            </el-row>
          </el-col>
          <el-col :span="6"><div class="grid-content bg-purple-light">{{currenTime}}&nbsp;&nbsp;{{weekTime|testab}}</div></el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="24">
        <el-row>
          <el-col :span="18">
            <el-row>
              <el-col :span="24">
                <el-row v-for="(circleItem,circleIndex) in circleList" :key="circleIndex">
                  <el-col :span="12" class="alignment">
                    <el-image :src="src"></el-image>
                  </el-col>
                  <el-col :span="12" class="alignment">
                    <el-row>
                      <el-col :span="24">
                        <div class="grid-content bg-purple-dark">{{circleItem.title}}</div>
                      </el-col>
                    </el-row>
                    <el-row>
                      <el-col :span="24">
                        <div class="grid-content bg-purple-dark">
                          {{circleItem.author}}
                          <span>{{circleItem.read_count}}</span>
                          <span>{{circleItem.admire_count}}</span>
                        </div>
                      </el-col>
                    </el-row>
                  </el-col>
                </el-row>
              </el-col>
            </el-row>
          </el-col>
          <el-col :span="6">
            <div class="grid-content bg-purple-light">
              <el-calendar v-model="value">
              </el-calendar>
            </div>
          </el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="24">
        <el-row>
          <el-col :span="18">
            <el-row>
              <el-col :span="12"><div class="grid-content bg-purple alignment">{{partner}}</div></el-col>
              <el-col :span="12"><div class="grid-content bg-purple-light alignright">查看更多</div></el-col>
            </el-row>
          </el-col>
          <el-col :span="6"><div class="grid-content bg-purple-light"></div></el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="24">
        <el-row>
          <el-col :span="18">
            <el-row>
              <el-col :span="8" v-for="(partnerItem,partnerIndex) in partnerList" :key="partnerIndex">
                <el-row>
                  <el-col :span="24">
                    <el-image :src="src"></el-image>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col :span="24">
                    <div class="grid-content bg-purple-dark">
                      {{partnerItem.title}}
                    </div>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col :span="24">
                    <div class="grid-content bg-purple-dark">
                      {{partnerItem.content}}
                    </div>
                  </el-col>
                </el-row>
                <el-row>
                  <el-col :span="24">
                    <div class="grid-content bg-purple-dark">
                      <span>{{partnerItem.author}}</span>
                      <span>{{partnerItem.read_count}}&nbsp;&nbsp;阅读</span>
                    </div>
                  </el-col>
                </el-row>
              </el-col>
            </el-row>
          </el-col>
          <el-col :span="6"><div class="grid-content bg-purple-light"></div></el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="24">
        <el-row>
          <el-col :span="18">
            <el-row>
              <el-col :span="12"><div class="grid-content bg-purple alignment">{{community}}</div></el-col>
              <el-col :span="12"><div class="grid-content bg-purple-light alignright">查看更多</div></el-col>
            </el-row>
          </el-col>
          <el-col :span="6"><div class="grid-content bg-purple-light"></div></el-col>
        </el-row>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="24">
        <el-row>
          <el-col :span="9">
            <el-row>
              <el-col :span="24"><div class="grid-content bg-purple-dark"></div></el-col>
            </el-row>
          </el-col>
          <el-col :span="9">
            <el-row>
              <el-col :span="24"><div class="grid-content bg-purple-dark"></div></el-col>
            </el-row>
          </el-col>
          <el-col :span="6"><div class="grid-content bg-purple"></div></el-col>
        </el-row>
      </el-col>
    </el-row>
  </el-row>
</template>

<script>
import Moment from 'moment'
export default {
  name: "index",
  components: {
    Moment
  },
  filters: {
      testab (param) {
      var format = ''
      switch (parseInt(param)) {
        case 0:
          format = '星期日'
          break;
        case 1:
          format = '星期一'
          break;
        case 2:
          format = '星期二'
          break;
        case 3:
          format = '星期三'
          break;
        case 4:
          format = '星期四'
          break;
        case 5:
          format = '星期五'
          break;
        case 6:
          format = '星期六'
          break;
      }
      return format
    }
  },
  data () {
    return {
      src: '',
      notice: {},
      indexNewsList: {},
      circle: '',
      partner: '',
      community: '',
      circleList: {},
      partnerList: {},
      currenTime:  Moment(new Date()).format('YYYY年MM月DD日'),
      weekTime:  Moment(new Date()).format('d')
    }
  },
  created () {
    this.getNotice()
    this.getIndexNews()
    this.getNav()
    this.getCircle()
    this.getPartner()
  },
  methods: {
    getNotice () {
      this.$axios.get('/notice').then(response => {
        if (response.data.code === 200 && response.data.data.length > 0) {
          this.notice = response.data.data[0]
        }
      })
    },
    getIndexNews () {
      this.$axios.get('/indexNews').then(response => {
        if (response.data.code === 200 && response.data.data.length > 0) {
          this.indexNewsList = response.data.data
        }
      })
    },
    getNav () {
      this.$axios.get('/navMenu').then(response => {
        if (response.data.code === 200 && response.data.data.length > 0) {
          this.circle = response.data.data[1].name
          this.partner = response.data.data[2].name
          this.community = response.data.data[3].name
        }
      })
    },
    getCircle () {
      this.$axios.get('/CircleNews').then(response => {
        if (response.data.code === 200 && response.data.data.length > 0) {
          this.circleList = response.data.data
        }
      })
    },
    getPartner () {
      this.$axios.get('/PartnerNews').then(response => {
        console.log(response)
        if (response.data.code === 200 && response.data.data.length > 0) {
          this.partnerList = response.data.data
        }
      })
    }
  }
}
</script>

<style scoped>
.clear{
  clear: both;
}
.alignment {
  text-align: left;
}
.alignright {
  text-align: right;
}
.indexNews {
  list-style-position: inside;
}
.indexNews a {
  width:70%;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  display: inline-block;
}
.indexNews span {
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  display: inline-block;
}
</style>
