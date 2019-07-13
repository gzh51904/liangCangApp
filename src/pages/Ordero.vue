<template>
    <div class="myOrder">
        <div class="myOrderTop">
            <mt-header class="settingsH" title="设置">
                <router-link to="/mine" slot="right">
                    <mt-button class="settingsB">更多设置</mt-button>
                </router-link>
            </mt-header>
        </div>
        <div class="myOrderfooter">
            <mt-navbar class="page-part" v-model="selected">
                <mt-tab-item id="1">选项一</mt-tab-item>
                <mt-tab-item id="2">选项二</mt-tab-item>
                <mt-tab-item id="3">选项三</mt-tab-item>
                <mt-tab-item id="4">选项一</mt-tab-item>
                <mt-tab-item id="5">选项二</mt-tab-item>
                <mt-tab-item id="6">选项三</mt-tab-item> 
            </mt-navbar>

            <div>
                <mt-cell class="page-part" title="当前选中">{{ selected }}</mt-cell>
            </div>
        </div>
    </div>
</template>

<script>
export default {
  name: 'page-navbar',

  data() {
    return {
      selected: '1'
    };
  }
};
</script>

<style>
    *{
        margin: 0;
        padding: 0;
    }
    ul li{
        list-style: none;
    }
    body,html{
        width: 100%;
        height: 100%;
    }
    .myOrder{
        width: 100%;
        height: 100%;
        padding: 0;
        margin: 0;
        display: flex;
        flex-direction: column;
    }
    /* 头部 */
    .myOrderTop{
        height: 6%;
    }
    .settingsH{
        width: 100%;
        height: 100%;
    }
    .myOrderfooter{
        flex: 1;
    }
</style>
