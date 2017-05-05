<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!--图片和字体图标自己搞，这快就不往cdn放了-->
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>首页</title>
<link rel="stylesheet"
	href="http://cdn.bootcss.com/weui/0.4.3/style/weui.min.css">
<link rel="stylesheet"
	href="http://cdn.bootcss.com/jquery-weui/0.8.0/css/jquery-weui.min.css">
<link rel="stylesheet"
	href="http://ps-story.oss-cn-qingdao.aliyuncs.com/swiper/swiper-3.3.1.min.css">
<!--swiper滚动插件-->
<link rel="stylesheet" href="resources/iconfont/iconfont.css">
<!--引用阿里云矢量图标-->
<style>
body {
	font-family: "微软雅黑";
	background-color: #F3F3F3;
}

.has-max {
	max-width: 640px;
} /*滚动图*/
.swiper-container1 img {
	width: 100%;
} /*九宫格分类*/
.weui_grid {
	width: 25%;
	padding: 10px;
}

.classify-icon {
	width: 25px;
}

.classify-name {
	margin-top: 10px !important;
}

.weui_grids a:nth-child(1) {
	color: #07ADE1;
}

.weui_grids a:nth-child(2) {
	color: #EB5449;
}

.weui_grids a:nth-child(3) {
	color: #EB5449;
}

.weui_grids a:nth-child(4) {
	color: #2FB695;
}

.weui_grids a:nth-child(5) {
	color: #F3962C;
}

.weui_grids a:nth-child(6) {
	color: #EB4F38;
}

.weui_grids a:nth-child(7) {
	color: #30B695;
}

.weui_grids a:nth-child(8) {
	color: #EB5449;
}

.weui_grids a:nth-child(9) {
	color: #FE9485;
}

.weui_grids a:nth-child(10) {
	color: #10A5E9;
}

.weui_grids a:nth-child(11) {
	color: #F0AACB;
}

.weui_grids a:nth-child(12) {
	color: #00BB9C;
}

.weui_grids a:nth-child(13) {
	color: #F4C600;
}

.weui_grids a:nth-child(14) {
	color: #EB4F38;
}

.weui_grids a:nth-child(15) {
	color: #FC6495;
}

.weui_grids a:nth-child(16) {
	color: #9AE2FA;
}

.weui_grids a:nth-child(17) {
	color: #4BBCB7;
}

.weui_grids a:nth-child(18) {
	color: #10A5E9;
}

.swiper-pagination-bullet {
	width: 6px;
	height: 6px;
}

.swiper-container2 {
	background-color: #fff;
}

.swiper-container2 .swiper-pagination-bullet-active {
	background: #F6292E;
}

.swiper-container2 .swiper-pagination2 {
	bottom: initial;
	margin-top: -16px;
	height: 20px;
	line-height: 20px;
}

.weui_grids:before {
	border: 0;
}

.weui_grid:before {
	border: 0;
} /*专属优惠滚动信息*/
.swiper-container3 {
	height: 20px;
	line-height: 20px;
}

.scroll-information {
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 1;
	font-size: 14px;
	width: 90%;
}

.hide-active .weui_cell:not (.no_access ):active {
	background-color: initial;
}

.scroll-image {
	width: 30%;
	padding-right: 8px;
	margin-right: 8px;
	border-right: 1px solid #dcd5d5;
}

.scroll-image img {
	width: 100%;
}

.weui_cells_access .weui_cell_ft:after {
	border-color: #888;
}

.weui_cell_ft {
	display: block;
} /*推荐秒杀栏*/
.recommended-spike .weui_media_appmsg .weui_media_hd {
	width: initial;
	height: initial;
	line-height: initial;
}

.recommended-spike {
	margin-top: 10px;
	background-color: #fff;
}

.recommended-name {
	font-size: 16px !important;
}

.recommended-num1 {
	color: #EEA1AD;
	font-size: 12px;
}

.recommended-num1 span {
	background-color: #F93B5E;
	color: #fff;
	border-radius: 50%;
	padding: 4px;
	margin-left: 2px;
}

.recommended-image1 {
	margin-right: 0 !important;
	width: 45% !important;
}

.recommended-image2 {
	margin-right: 0 !important;
	width: 25% !important;
}

.recommended-num2 {
	font-size: 12px;
}

.recommended-right {
	padding: 2px 15px;
}

.recommended-top {
	margin-top: 5px;
} /*秒杀大图*/
.recommended-image3 {
	width: 100%;
	margin-top: 10px;
}

.recommended-image3 img {
	width: 100%;
} /*首页产品列表*/
.product-list-border:nth-child(1) {
	margin-top: 0;
}

.product-list-border:nth-child(2) {
	margin-top: 0;
}

.product-list-border {
	background-color: #fff;
	width: calc(( 100% - 5px * 1)/2) !important;
	padding: 5px;
	margin-top: 5px;
}

.product-list-border img {
	width: 100%;
	min-height: 150px;
	max-height: 180px;
}

.product-name {
	color: #000;
	font-size: 14px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 1;
}

.product-price {
	color: #e60d1e;
	font-size: 14px;
	margin: 5px auto;
} /*底部菜单栏*/
.footer-menu {
	position: fixed;
	max-width: 640px;
}

.weui_tabbar_item {
	color: #888;
}

.weui_bar_item_on {
	color: #EB4F38;
}

.weui_tabbar_item.weui_bar_item_on .weui_tabbar_label {
	color: #EB4F38;
}

.weui_tabbar:before {
	border-top: 1px solid #d5d5d6;
}

.footer-menu-icon {
	margin-bottom: 5px;
	margin-top: 10px !important;
}
</style>
</head>
<body>
	<div class="has-max">
		<!--滚动图-->
		<div class="swiper-container swiper-container1">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="images/swiper1.jpg" />
				</div>
				<div class="swiper-slide">
					<img src="images/swiper2.jpg" />
				</div>
				<div class="swiper-slide">
					<img src="images/swiper3.jpg" />
				</div>
				<div class="swiper-slide">
					<img src="images/swiper4.jpg" />
				</div>
			</div>
			<!-- 如果需要分页器 -->
			<div class="swiper-pagination swiper-pagination1"></div>
		</div>
		<!--九宫格分类-->
		<div class="swiper-container swiper-container2">
			<div class="swiper-wrapper">
				<!--分类一栏-->
				<div class="swiper-slide">
					<div class="weui_grids">
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-shenghuo"></i>
							</div>
							<p class="weui_grid_label classify-name">生活套装</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-xinpin"></i>
							</div>
							<p class="weui_grid_label classify-name">新品</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-xinpin"></i>
							</div>
							<p class="weui_grid_label classify-name">今日上新</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-shuma"></i>
							</div>
							<p class="weui_grid_label classify-name">数码</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-xihu"></i>
							</div>
							<p class="weui_grid_label classify-name">洗护</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-jiaju"></i>
							</div>
							<p class="weui_grid_label classify-name">家居</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-fuzhuang"></i>
							</div>
							<p class="weui_grid_label classify-name">服装</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-shangpin"></i>
							</div>
							<p class="weui_grid_label classify-name">商品</p>
						</a>
					</div>
				</div>
				<!--分类二栏-->
				<div class="swiper-slide">
					<div class="weui_grids">
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-baihuo"></i>
							</div>
							<p class="weui_grid_label classify-name">百货</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-qita"></i>
							</div>
							<p class="weui_grid_label classify-name">其他</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-muying"></i>
							</div>
							<p class="weui_grid_label classify-name">母婴</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-tiyu"></i>
							</div>
							<p class="weui_grid_label classify-name">体育器材</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-xiangbao"></i>
							</div>
							<p class="weui_grid_label classify-name">箱包</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-qiche"></i>
							</div>
							<p class="weui_grid_label classify-name">汽车用品</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-meizhuang"></i>
							</div>
							<p class="weui_grid_label classify-name">美妆护肤</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-peishi"></i>
							</div>
							<p class="weui_grid_label classify-name">配饰</p>
						</a>
					</div>
				</div>
				<!--分类三栏-->
				<div class="swiper-slide">
					<div class="weui_grids">
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-diannao"></i>
							</div>
							<p class="weui_grid_label">电脑耗材</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-quanbu"></i>
							</div>
							<p class="weui_grid_label">全部</p>
						</a>
					</div>
				</div>
			</div>
			<!-- 如果需要分页器 -->
			<div class="swiper-pagination swiper-pagination2"></div>
		</div>
		<!--专属优惠滚动信息-->
		<div class="weui_panel">
			<div class="weui_panel_bd">
				<div class="weui_media_box weui_media_small_appmsg">
					<div class="weui_cells weui_cells_access hide-active">
						<div class="weui_cell">
							<div class="weui_cell_hd scroll-image">
								<img src="images/zsyh.png">
							</div>
							<div class="weui_cell_bd weui_cell_primary">
								<div class="swiper-container swiper-container3">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<p class="scroll-information">处变不惊拨开层层迷雾，透视技术学习本质</p>
											<span class="weui_cell_ft"></span>
										</div>
										<div class="swiper-slide">
											<p class="scroll-information">站在巨人肩头和高管大咖取经，培育全局的眼光</p>
											<span class="weui_cell_ft"></span>
										</div>
										<div class="swiper-slide">
											<p class="scroll-information">掌握技术干货与行业大牛交流，学习主流的，融汇先锋的</p>
											<span class="weui_cell_ft"></span>
										</div>
										<div class="swiper-slide">
											<p class="scroll-information">保持开放心态要挥汗挖掘更多出路，也要听取同行者的建议</p>
											<span class="weui_cell_ft"></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--推荐秒杀栏-->
		<div class="weui-row weui-no-gutter recommended-spike">
			<div class="weui-col-50">
				<div class="weui_panel weui_panel_access">
					<div class="weui_panel_bd">
						<a href="" class="weui_media_box weui_media_appmsg">
							<div class="weui_media_bd">
								<h4 class="weui_media_title recommended-name">手机</h4>
								<p class="weui_media_desc recommended-num1">
									秒杀 <span>999元</span>
								</p>
							</div>
							<div class="weui_media_hd recommended-image1">
								<img class="weui_media_appmsg_thumb" src="images/ms1.png">
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="weui-col-50">
				<div class="weui_panel weui_panel_access">
					<div class="weui_panel_bd">
						<a href=""
							class="weui_media_box weui_media_appmsg recommended-right">
							<div class="weui_media_bd">
								<h4 class="weui_media_title recommended-name">旺仔</h4>
								<p class="weui_media_desc recommended-num2">儿童牛奶</p>
							</div>
							<div class="weui_media_hd recommended-image2">
								<img class="weui_media_appmsg_thumb" src="images/ms2.jpg">
							</div>
						</a>
					</div>
				</div>
				<div class="weui_panel weui_panel_access recommended-top">
					<div class="weui_panel_bd">
						<a href=""
							class="weui_media_box weui_media_appmsg recommended-right">
							<div class="weui_media_bd">
								<h4 class="weui_media_title recommended-name">母婴</h4>
								<p class="weui_media_desc recommended-num2">限时秒杀上线</p>
							</div>
							<div class="weui_media_hd recommended-image2">
								<img class="weui_media_appmsg_thumb" src="images/ms3.jpg">
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--秒杀大图-->
		<div class="recommended-image3">
			<img src="images/ms4.jpg" />
		</div>
		<!--首页产品列表-->
		<div class="weui-row" style="margin-bottom: 75px;">
			<div class="weui-col-50 product-list-border">
				<a href=""> <img src="images/product1.jpg" />
					<p class="product-name">日式带盖大肚牛奶杯K006</p>
					<p class="product-price">￥14.5</p>
				</a>
			</div>
			<div class="weui-col-50 product-list-border">
				<a href=""> <img src="images/product2.jpg" />
					<p class="product-name">360°旋转磁性多功能手机架O006</p>
					<p class="product-price">￥8.8</p>
				</a>
			</div>
			<div class="weui-col-50 product-list-border">
				<a href=""> <img src="images/product3.jpg" />
					<p class="product-name">厨房加厚橡胶家务手套H101</p>
					<p class="product-price">￥3</p>
				</a>
			</div>
			<div class="weui-col-50 product-list-border">
				<a href=""> <img src="images/product4.jpg" />
					<p class="product-name">24K黄金棒美容棒电动瘦脸仪器祛皱美容脸部按摩器M002</p>
					<p class="product-price">￥35</p>
				</a>
			</div>
		</div>
		<!--底部菜单栏-->
		<div class="weui_tabbar footer-menu">
			<a href="" class="weui_tabbar_item weui_bar_item_on">
				<div class="weui_tabbar_icon">
					<i class="iconfont icon-shouye"></i>
				</div>
				<p class="weui_tabbar_label footer-menu-icon">首页</p>
			</a> <a href="" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<i class="iconfont icon-daodianfu"></i>
				</div>
				<p class="weui_tabbar_label footer-menu-icon">到店付</p>
			</a> <a href="" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<i class="iconfont icon-gouwuche"></i>
				</div>
				<p class="weui_tabbar_label footer-menu-icon">购物车</p>
			</a> <a href="" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<i class="iconfont icon-gerenzhongxin"></i>
				</div>
				<p class="weui_tabbar_label footer-menu-icon">个人中心</p>
			</a>
		</div>
	</div>
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script
		src="http://cdn.bootcss.com/jquery-weui/0.8.0/js/jquery-weui.min.js"></script>
	<script
		src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="http://ps-story.oss-cn-qingdao.aliyuncs.com/swiper/swiper-3.3.1.min.js"></script>
	<!--swiper滚动插件-->
	<script> // 滚动图 var mySwiper1 = new Swiper('.swiper-container1', { direction: 'horizontal', loop: true, autoplay : 3000, speed:2000, autoplayDisableOnInteraction : false, effect : 'coverflow', // 如果需要分页器 pagination: '.swiper-pagination1' }); // 九宫格分类 var mySwiper2 = new Swiper('.swiper-container2', { direction: 'horizontal', loop: true, effect : 'flip', // 如果需要分页器 pagination: '.swiper-pagination2' }); // 专属优惠滚动信息 var mySwiper3 = new Swiper('.swiper-container3', { direction: 'vertical', loop: true, autoplay : 3000, speed:2000, autoplayDisableOnInteraction : false }); </script>
</body>
</html>
