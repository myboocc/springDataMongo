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
<link rel="stylesheet" href="http://cdn.bootcss.com/weui/0.4.3/style/weui.min.css">
<link rel="stylesheet" href="http://cdn.bootcss.com/jquery-weui/0.8.0/css/jquery-weui.min.css">
<link rel="stylesheet" href="http://ps-story.oss-cn-qingdao.aliyuncs.com/swiper/swiper-3.3.1.min.css">
<!--swiper滚动插件-->
<link rel="stylesheet" href="resources/iconfont/iconfont.css">
<!--引用阿里云矢量图标-->
<link rel="stylesheet" type="text/css" href="resources/css/LDShop.css"/>
</head>
<body>
	<div class="has-max">
		<!--滚动图-->
		<div class="swiper-container swiper-container1">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="https://img1.360buyimg.com/da/jfs/t4606/347/2304717191/75732/2159fcb3/58edf177N64d03840.jpg" />
				</div>
				<div class="swiper-slide">
					<img src="https://m.360buyimg.com/mobilecms/s720x322_jfs/t5392/355/1062479310/201475/a69e7b5a/590afc8fN4fb0934a.jpg!q70.jpg" />
				</div>
				<div class="swiper-slide">
					<img src="https://img1.360buyimg.com/da/jfs/t4603/202/4026805306/76506/c62fa570/59085898N17082b7c.jpg" />
				</div>
				<div class="swiper-slide">
					<img src="https://m.360buyimg.com/mobilecms/s720x322_jfs/t5473/78/1151600388/73948/bf2820a3/590c56d8N09af6c27.jpg!q70.jpg" />
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
								<i class="iconfont icon-gouwu"></i>
							</div>
							<p class="weui_grid_label classify-name">生活套装</p>
						</a> 
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-new"></i>
							</div>
							<p class="weui_grid_label classify-name">新品</p>
						</a> 
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-new"></i>
							</div>
							<p class="weui_grid_label classify-name">今日上新</p>
						</a> 
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-shuma1"></i>
							</div>
							<p class="weui_grid_label classify-name">数码</p>
						</a> 
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-ganxi"></i>
							</div>
							<p class="weui_grid_label classify-name">洗护</p>
						</a> 
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-iconfontjiaju"></i>
							</div>
							<p class="weui_grid_label classify-name">家居</p>
						</a> 
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-fuzhuang"></i>
							</div>
							<p class="weui_grid_label classify-name">服装</p>
						</a> 
						<a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-goods"></i>
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
								<i class="iconfont icon-ganxi"></i>
							</div>
							<p class="weui_grid_label classify-name">百货</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-gouwu"></i>
							</div>
							<p class="weui_grid_label classify-name">其他</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-fuzhuang"></i>
							</div>
							<p class="weui_grid_label classify-name">母婴</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-iconfontjiaju"></i>
							</div>
							<p class="weui_grid_label classify-name">体育器材</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-new"></i>
							</div>
							<p class="weui_grid_label classify-name">箱包</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-shuma1"></i>
							</div>
							<p class="weui_grid_label classify-name">汽车用品</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-ganxi"></i>
							</div>
							<p class="weui_grid_label classify-name">美妆护肤</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-goods"></i>
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
								<i class="iconfont icon-shuma1"></i>
							</div>
							<p class="weui_grid_label">电脑耗材</p>
						</a> <a href="" class="weui_grid js_grid">
							<div class="weui_grid_icon classify-icon">
								<i class="iconfont icon-gouwu"></i>
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
								<img src="https://st.360buyimg.com/m/images/index/jd-news-tit.png">
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
								<img class="weui_media_appmsg_thumb" src="https://m.360buyimg.com/mobilecms/jfs/t4522/349/4148267661/12608/d57cbb51/5909d2baN871fd3a2.jpg!q70.jpg">
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
								<img class="weui_media_appmsg_thumb" src="https://m.360buyimg.com/mobilecms/jfs/t4612/70/3460081719/11079/dbb33ee3/5901bbb1N915fed2e.jpg!q70.jpg">
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
								<img class="weui_media_appmsg_thumb" src="https://m.360buyimg.com/mobilecms/jfs/t5128/348/1054498339/29856/d7417234/590b03a2N29ce6018.png!q70.jpg">
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!--秒杀大图-->
		<div class="recommended-image3">
			<img src="https://m.360buyimg.com/mobilecms/jfs/t4642/70/4206852050/95956/9ead5c75/590c2424Nd0b7d808.jpg!q70.jpg" />
		</div>
		<!--首页产品列表-->
		<div class="weui-row" style="margin-bottom: 75px;">
			<div class="weui-col-50 product-list-border">
				<a href=""> <img src="https://gd2.alicdn.com/imgextra/i1/2963950385/TB2ngdkpipnpuFjSZFIXXXh2VXa_!!2963950385.jpg_400x400.jpg" />
					<p class="product-name">日式带盖大肚牛奶杯K006</p>
					<p class="product-price">￥14.5</p>
				</a>
			</div>
			<div class="weui-col-50 product-list-border">
				<a href=""> <img src="https://gw1.alicdn.com/bao/uploaded/i1/TB1Xs1BKpXXXXXBapXXXXXXXXXX_!!0-item_pic.jpg_210x210.jpg" />
					<p class="product-name">360°旋转磁性多功能手机架O006</p>
					<p class="product-price">￥8.8</p>
				</a>
			</div>
			<div class="weui-col-50 product-list-border">
				<a href=""> <img src="https://gw1.alicdn.com/bao/uploaded/i2/TB1Tu8FQFXXXXXvXXXXXXXXXXXX_!!0-item_pic.jpg_210x210.jpg" />
					<p class="product-name">厨房加厚橡胶家务手套H101</p>
					<p class="product-price">￥3</p>
				</a>
			</div>
			<div class="weui-col-50 product-list-border">
				<a href=""> <img src="https://gw3.alicdn.com/bao/uploaded/i2/TB1e88QQFXXXXalXFXXXXXXXXXX_!!0-item_pic.jpg_210x210.jpg" />
					<p class="product-name">24K黄金棒美容棒电动瘦脸仪器祛皱美容脸部按摩器M002</p>
					<p class="product-price">￥35</p>
				</a>
			</div>
		</div>
		<!--底部菜单栏-->
		<div class="weui_tabbar footer-menu">
			<a href="" class="weui_tabbar_item weui_bar_item_on">
				<div class="weui_tabbar_icon">
					<i class="iconfont icon-home-red"></i>
				</div>
				<p class="weui_tabbar_label footer-menu-icon">首页</p>
			</a> <a href="" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<i class="iconfont icon-rizhidingdanzhifu"></i>
				</div>
				<p class="weui_tabbar_label footer-menu-icon">到店付</p>
			</a> <a href="" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<i class="iconfont icon-gouwuche"></i>
				</div>
				<p class="weui_tabbar_label footer-menu-icon">购物车</p>
			</a> <a href="" class="weui_tabbar_item">
				<div class="weui_tabbar_icon">
					<i class="iconfont icon-geren"></i>
				</div>
				<p class="weui_tabbar_label footer-menu-icon">个人中心</p>
			</a>
		</div>
	</div>
	<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://cdn.bootcss.com/jquery-weui/0.8.0/js/jquery-weui.min.js"></script>
	<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://ps-story.oss-cn-qingdao.aliyuncs.com/swiper/swiper-3.3.1.min.js"></script>
	<!--swiper滚动插件-->
	<script> 
	// 滚动图 
	var mySwiper1 = new Swiper('.swiper-container1', {
				direction: 'horizontal',
				loop: true,
				autoplay: 3000,
				speed: 2000,
				autoplayDisableOnInteraction: false,
				effect: 'coverflow', 
				// 如果需要分页器 
				pagination: '.swiper-pagination1' 
	}); 
	// 九宫格分类
	var mySwiper2 = new Swiper('.swiper-container2', {
				direction: 'horizontal',
				loop: true,
				effect: 'flip', 
				// 如果需要分页器 
				pagination: '.swiper-pagination2' 
	});
	// 专属优惠滚动信息 
	var mySwiper3 = new Swiper('.swiper-container3', {
		direction: 'vertical',
		loop: true,
		autoplay: 3000,
		speed: 2000,
		autoplayDisableOnInteraction: false
	});
	</script>
</body>
</html>
