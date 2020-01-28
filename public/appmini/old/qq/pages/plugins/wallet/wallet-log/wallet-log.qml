<!-- 导航 -->
<view class="nav">
  <block qq:for="{{nav_status_list}}" qq:key="key">
    <view class="item fl tc cr-888 {{nav_status_index == index ? 'active' : ''}}" data-index="{{index}}" bindtap="nav_event">{{item.name}}</view>
  </block>
</view>

<!-- 列表 -->
<scroll-view scroll-y="{{true}}" class="scroll-box" bindscrolltolower="scroll_lower" lower-threshold="30">
  <view class="data-list">
    <view class="item bg-white spacing-mb" qq:if="{{data_list.length > 0}}" qq:for="{{data_list}}" qq:key="key">
      <view class="base oh br-b">
        <text class="cr-666">{{item.add_time_time}}</text>
        <text class="fr cr-main">{{item.operation_type_name}}</text>
      </view>
      <navigator url="/pages/plugins/wallet/wallet-log-detail/wallet-log-detail?id={{item.id}}" hover-class="none">
        <view class="content">
          <view class="multi-text">
            <text class="title cr-666">业务类型</text>
            <text class="value">{{item.business_type_name}}</text>
          </view>
          <view class="multi-text">
            <text class="title cr-666">金额类型</text>
            <text class="value">{{item.money_type_name}}</text>
          </view>
          <view class="multi-text">
            <text class="title cr-666">操作金额</text>
            <text class="value">{{item.operation_money}}</text>
            <text class="unit cr-888">元</text>
          </view>
          <view class="multi-text">
            <text class="title cr-666">原始金额</text>
            <text class="value">{{item.original_money}}</text>
            <text class="unit cr-888">元</text>
          </view>
          <view class="multi-text">
            <text class="title cr-666">最新金额</text>
            <text class="value">{{item.latest_money}}</text>
            <text class="unit cr-888">元</text>
          </view>
        </view>
      </navigator>
    </view>

    <view qq:if="{{data_list.length == 0}}">
      <import src="/pages/common/nodata.wxml" />
      <template is="nodata" data="{{status: data_list_loding_status}}">
      </template>
    </view>

    <import src="/pages/common/bottom_line.wxml" />
    <template is="bottom_line" data="{{status: data_bottom_line_status}}"></template>
  </view>
</scroll-view>