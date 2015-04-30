var HomeCtrls = angular.module('HomeCtrls', ['ng.ueditor','ui.tree']);

// 主页的Controller Start
HomeCtrls.controller('homeCtrl', ['$scope',
    function($scope) {
        $scope.userInfo = {
            email: "tests@qq.com"
        };

        $scope.tplURLs = {
            pictureShow: publicUrl + 'tpl/home/picture_show.html',
            leftNavOuterContainer: publicUrl + 'tpl/home/nav_containers.html',
            superAdContainer: publicUrl + 'tpl/home/super_ad.html',
            rightNavOuterContainer: publicUrl + 'tpl/home/right_container.html',
        };

        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.fasionClothes = {
            0: [
            {"class": "type-name","content": "潮流女装"},
            {"class": "commen","content": "春新品"},
            {"class": "hot","content": "韩版"},
            {"class": "commen","content": "毛衣"},
            {"class": "commen","content": "薄开衫"},
            {"class": "commen","content": "本身裙"},
            ],

            1: [
            {"class": "type-name","content": "潮流女装"},
            {"class": "commen","content": "春装"},
            {"class": "hot","content": "韩版"},
            {"class": "commen","content": "毛衣"},
            {"class": "commen","content": "薄开衫"},
            {"class": "commen","content": "本身裙"},
            ],

            2: [
            {"class": "type-name","content": "潮流女装"},
            {"class": "commen","content": "春装"},
            {"class": "hot","content": "韩版"},
            {"class": "commen","content": "毛衣"},
            {"class": "commen","content": "薄开衫"},
            {"class": "commen","content": "本身裙"},
            ],

            3: [
            {"class": "type-name","content": "潮流女装"},
            {"class": "commen","content": "春装"},
            {"class": "hot","content": "韩版"},
            {"class": "commen","content": "毛衣"},
            {"class": "commen","content": "薄开衫"},
            {"class": "commen","content": "本身裙"},
            ],
        };

        $scope.jades = {
            0: [
            {"class": "type-name","content": "黄金首饰"},
            {"class": "commen","content": "手镯"},
            {"class": "hot","content": "耳环"},
            {"class": "commen","content": "项链"},
            {"class": "commen","content": "戒指"},
            ],

            1: [
            {"class": "type-name","content": "黄金首饰"},
            {"class": "commen","content": "手镯"},
            {"class": "hot","content": "耳环"},
            {"class": "commen","content": "项链"},
            {"class": "commen","content": "戒指"},
            ],

            2: [
            {"class": "type-name","content": "黄金首饰"},
            {"class": "commen","content": "手镯"},
            {"class": "hot","content": "耳环"},
            {"class": "commen","content": "项链"},
            {"class": "commen","content": "戒指"},
            ],

            3:[
            {"class": "type-name","content": "黄金首饰"},
            {"class": "commen","content": "手镯"},
            {"class": "hot","content": "耳环"},
            {"class": "commen","content": "项链"},
            {"class": "commen","content": "戒指"},
            ],

            4:[
            {"class": "type-name","content": "黄金首饰"},
            {"class": "commen","content": "手镯"},
            {"class": "hot","content": "耳环"},
            {"class": "commen","content": "项链"},
            {"class": "commen","content": "戒指"},
            ],

            5:[
            {"class": "type-name","content": "黄金首饰"},
            {"class": "commen","content": "手镯"},
            {"class": "hot","content": "耳环"},
            {"class": "commen","content": "项链"},
            {"class": "commen","content": "戒指"},
            ],
        };


        $scope.snacks = {
            0: [
            {"class": "type-name","content": "鲜果肉禽"},
            {"class": "commen","content": "春笋"},
            {"class": "hot","content": "海参"},
            {"class": "commen","content": "龙虾"},
            ],

            1: [
            {"class": "type-name","content": "鲜果肉禽"},
            {"class": "commen","content": "春笋"},
            {"class": "hot","content": "海参"},
            {"class": "commen","content": "龙虾"},
            ],

            2: [
            {"class": "type-name","content": "鲜果肉禽"},
            {"class": "commen","content": "春笋"},
            {"class": "hot","content": "海参"},
            {"class": "commen","content": "龙虾"},
            ],

            3: [
            {"class": "type-name","content": "鲜果肉禽"},
            {"class": "commen","content": "春笋"},
            {"class": "hot","content": "海参"},
            {"class": "commen","content": "龙虾"},
            ],
        };

        
        $scope.goods = [
            {"pic": "goods.JPG","title": "2014新款绑公主1111","orig": "根据你“浏览”的“礼服”推荐","sell": "已售99件"},
            {"pic": "goods.JPG","title": "2014新款绑公主","orig": "根据你“浏览”的“礼服”推荐","sell": "已售99件"},
            {"pic": "goods.JPG","title": "2014新款绑公主","orig": "根据你“浏览”的“礼服”推荐","sell": "已售99件"},
            {"pic": "goods.JPG","title": "2014新款绑公主","orig": "根据你“浏览”的“礼服”推荐","sell": "已售99件"},
        ];

         $scope.shops = [
            {"pic": "shop.JPG", "name": "牛油曲奇DIY", "goods": "居家布艺", "desc": "很舒服 态度很好 跟描述一致 售后很好","goodPic1": "shop-goods.JPG", "goodPic2": "shop-goods.JPG" , "goodPic3": "shop-goods.JPG"},
            {"pic": "shop.JPG", "name": "牛油曲奇DIY", "goods": "居家布艺", "desc": "很舒服 态度很好 跟描述一致 售后很好","goodPic1": "shop-goods.JPG", "goodPic2": "shop-goods.JPG" , "goodPic3": "shop-goods.JPG"},
            {"pic": "shop.JPG", "name": "牛油曲奇DIY", "goods": "居家布艺", "desc": "很舒服 态度很好 跟描述一致 售后很好","goodPic1": "shop-goods.JPG", "goodPic2": "shop-goods.JPG" , "goodPic3": "shop-goods.JPG"},
        ];

    }
]);
// 主页的Controller End

// 热卖宝贝的Controller Start
HomeCtrls.controller('hotBabyCtrl', ['$scope','HotBaby',
    function($scope, HotBaby) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            hotBabyMain : publicUrl + 'tpl/home/hot_baby_main.html',
        };

        $scope.babyKinds = {
        	0: [
			{"babyKindSeq": "01", "babyKindName": "裙角飞扬"},
        	{"babyKindSeq": "02", "babyKindName": "女神进化术"},
        	{"babyKindSeq": "03", "babyKindName": "时尚先生"},
			],
        };

        $scope.$on('HotBaby.babyRowsWomenUpdate', function (event) {
            $scope.babyRowsWomen = HotBaby.babyRowsWomen;
        });

        HotBaby.getBabyRowsWomen();

		$scope.babyRowsMakeup = {
			0: [
			{"url": "8.jpg","babyName": "嘉丝肤缇", "babyDesc": "丝柔矿物干湿两用粉饼13#，细腻白皙裸透遮瑕，妆效持久，完美贴合肌肤","babyPrice": "59"},
			{"url": "9.jpg","babyName": "嘉丝肤缇", "babyDesc": "丝柔矿物干湿两用粉饼13#，细腻白皙裸透遮瑕，妆效持久，完美贴合肌肤","babyPrice": "59"},
			{"url": "10.jpg","babyName": "嘉丝肤缇", "babyDesc": "丝柔矿物干湿两用粉饼13#，细腻白皙裸透遮瑕，妆效持久，完美贴合肌肤","babyPrice": "59"},
			{"url": "13.jpg","babyName": "嘉丝肤缇", "babyDesc": "丝柔矿物干湿两用粉饼13#，细腻白皙裸透遮瑕，妆效持久，完美贴合肌肤","babyPrice": "59"},
			],

			1: [
			{"url": "8.jpg","babyName": "嘉丝肤缇", "babyDesc": "丝柔矿物干湿两用粉饼13#，细腻白皙裸透遮瑕，妆效持久，完美贴合肌肤","babyPrice": "59"},
			{"url": "9.jpg","babyName": "嘉丝肤缇", "babyDesc": "丝柔矿物干湿两用粉饼13#，细腻白皙裸透遮瑕，妆效持久，完美贴合肌肤","babyPrice": "59"},
			{"url": "10.jpg","babyName": "嘉丝肤缇", "babyDesc": "丝柔矿物干湿两用粉饼13#，细腻白皙裸透遮瑕，妆效持久，完美贴合肌肤","babyPrice": "59"},
			{"url": "13.jpg","babyName": "嘉丝肤缇", "babyDesc": "丝柔矿物干湿两用粉饼13#，细腻白皙裸透遮瑕，妆效持久，完美贴合肌肤","babyPrice": "59"},
			],

		};

		$scope.babyRowsMen = {
			0: [
			{"url": "14.jpg","babyName": "衣品天成", "babyDesc": "男款藏蓝色短袖T恤","babyPrice": "158"},
			{"url": "15.jpg","babyName": "衣品天成", "babyDesc": "男款藏蓝色短袖T恤","babyPrice": "158"},
			{"url": "16.jpg","babyName": "衣品天成", "babyDesc": "男款藏蓝色短袖T恤","babyPrice": "158"},
			{"url": "17.jpg","babyName": "衣品天成", "babyDesc": "男款藏蓝色短袖T恤","babyPrice": "158"},
			],

			1: [
			{"url": "14.jpg","babyName": "衣品天成", "babyDesc": "男款藏蓝色短袖T恤","babyPrice": "158"},
			{"url": "15.jpg","babyName": "衣品天成", "babyDesc": "男款藏蓝色短袖T恤","babyPrice": "158"},
			{"url": "16.jpg","babyName": "衣品天成", "babyDesc": "男款藏蓝色短袖T恤","babyPrice": "158"},
			{"url": "17.jpg","babyName": "衣品天成", "babyDesc": "男款藏蓝色短袖T恤","babyPrice": "158"},
			],

		};
    }
]);
// 热卖宝贝的Controller End

// 热卖品牌的Controller Start
HomeCtrls.controller('popularBrandCtrl', ['$scope','PopularBrand',
    function($scope,PopularBrand) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            popularBrandNav : publicUrl + 'tpl/home/popular_brand_nav.html',
            popularBrandMain : publicUrl + 'tpl/home/popular_brand_main.html',
        };

        PopularBrand.getBrandList();

        $scope.$on('PopularBrand.brandListUpdate', function (event) {
            $scope.brandList = PopularBrand.brandList;
        });

        $scope.item_list = [
            {"url": "25.jpg"},
            {"url": "26.jpg"},
            {"url": "27.jpg"},
            {"url": "28.jpg"},
            {"url": "29.jpg"},
            {"url": "30.jpg"},
        ];
    }
]);
// 热卖品牌的Controller End

// 热卖店家的Controller Start
HomeCtrls.controller('popularShopCtrl', ['$scope',
    function($scope) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
           popularShop: publicUrl + 'tpl/home/popular_shop_main.html', 
        };
    }
]);
// 热卖店家的Controller End

// 代理中心的Controller Start
HomeCtrls.controller('delegateCtrl', ['$scope',
    function($scope) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            agence: publicUrl + 'tpl/home/agence_main.html', 
            agencySettingMain:publicUrl + 'tpl/home/agence_setting_main.html'
        };
    }
]);
// 代理中心的Controller End

// 更多优惠的Controller Start
HomeCtrls.controller('moreCheapCtrl', ['$scope',
    function($scope) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
        	
        };
    }
]);
// 更多优惠的Controller End

// 注册的Controller
HomeCtrls.controller('registerCtrl', ['$scope', '$http',
    function($scope, $http) {
        $scope.urlPath = urlPath;
        $scope.appPath = appPath;
        $scope.publicPath = publicPath;
    }
]);

// 登陆的Controller
HomeCtrls.controller('loginCtrl', ['$scope', '$http',
    function($scope, $http) {
        $scope.urlPath = urlPath;
        $scope.appPath = appPath;
        $scope.publicPath = publicPath;
    }
]);

HomeCtrls.controller('completeDetailCtrl', ['$scope', '$upload',
    function($scope, $upload) {
        $scope.urlPath = urlPath;
        $scope.appPath = appPath;
        $scope.publicPath = publicPath;
        $scope.uploadPath = uploadPath;

        $scope.userDetailInfo = {user_header_img: publicPath + 'home/img/default_head.png'};

        $scope.$watch('files', function() {
            $scope.upload($scope.files);
        });

        $scope.upload = function(files) {
            if (files && files.length) {
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    $upload.upload({
                        url: appPath + 'API/UserAPI/save_head_img',
                        headers: {
                            'Content-Type': file.type
                        },
                        method: 'POST',
                        data: file,
                        file: file,
                    }).progress(function(evt) {
                        var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    }).success(function(data, status, headers, config) {
                        $scope.userDetailInfo.user_header_img = uploadPath + 'head_img/' + data;
                        $scope.userDetailInfo.user_header_temp_img = uploadPath + 'head_img/thumb_' + data;
                    });
                }
            }
        };
    }
]);

// 头部的Controller
HomeCtrls.controller('headCtrl', ['User', '$scope',
    function(User, $scope) {
        User.checkLogin();
        $scope.user_name = User.user_name;
        $scope.user_id = User.user_id;

        $scope.$on('User.isLogin', function (event) {
            $scope.user_name = User.user_name;
            $scope.user_id = User.user_id;
        });

        $scope.$on('User.registerSuccess', function (event) {
            $scope.user_name = User.user_name;
            $scope.user_id = User.user_id;
        });

        $scope.$on('User.loginSuccess', function (event) {
            $scope.user_name = User.user_name;
            $scope.user_id = User.user_id;
        });

        $scope.$on('User.logoutSuccess', function (event) {
            $scope.user_name = User.user_name;
            $scope.user_id = User.user_id;
        });
    }
]);

// zhuyunxiang 运动风暴
HomeCtrls.controller('sportsCtrl', ['$scope', 
    function($scope){
        $scope.tips =  '这个是运动风暴的controller';
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            sportsMain : publicUrl + 'tpl/home/sports_main.html',
        };
}]);

// zhuyunxiang 男装&女装
HomeCtrls.controller('typeCtrl', ['$scope', 
	function($scope){
	    $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            typeMain : publicUrl + 'tpl/home/type_main.html',
        };


        $scope.typeSingles = [
	        {"url": "3.jpg"},
	        {"url": "4.jpg"},
	        {"url": "5.jpg"},
	        {"url": "6.jpg"},
	        {"url": "7.jpg"},
	        {"url": "8.jpg"},
	        {"url": "9.jpg"},
	        {"url": "10.jpg"},
	        {"url": "11.jpg"},
	        {"url": "12.jpg"},
        ];

}]);

// 商品列表Controller
HomeCtrls.controller('productListCtrl', ['$scope',
    function($scope) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            
        };


        $scope.brands = [
        	{"url":"1.jpg"},
        	{"url":"2.jpg"},
        	{"url":"3.jpg"},
        	{"url":"4.jpg"},
        	{"url":"5.jpg"},
        	{"url":"6.jpg"},
        	{"url":"7.jpg"},
        	{"url":"8.jpg"},
        	{"url":"1.jpg"},
        	{"url":"2.jpg"},
        	{"url":"3.jpg"},
        	{"url":"4.jpg"},
        	{"url":"5.jpg"},
        	{"url":"6.jpg"},
        	{"url":"7.jpg"},
        	{"url":"8.jpg"},
        ];

        $scope.hotSell = [
        	{"item":"气质淑女"},
        	{"item":"加肥加大"},
        	{"item":"小香风"},
        	{"item":"打底"},
        	{"item":"气质优雅"},
        	{"item":"牛仔"},
        	{"item":"气质淑女"},
        	{"item":"加肥加大"},
        	{"item":"小香风"},
        	{"item":"打底"},
        	{"item":"气质优雅"},
        	{"item":"牛仔"},
        	{"item":"气质淑女"},
        	{"item":"加肥加大"},
        	{"item":"气质淑女"},
        	{"item":"加肥加大"},
        	{"item":"小香风"},
        	{"item":"打底"},
        	{"item":"气质优雅"},
        	{"item":"牛仔"},
        	{"item":"气质淑女"},
        	{"item":"加肥加大"},
        	{"item":"小香风"},
        	{"item":"打底"},
        	{"item":"气质优雅"},
        	{"item":"牛仔"},
        ];

        $scope.prodBabyList = [
	        {"url": "9.jpg", "price": "445", "desc": "【品牌团】韩都衣舍韩版2015夏装新款"},
	        {"url": "10.jpg", "price": "666", "desc": "2015夏款粉红大布娃娃衬衫款连衣裙"},
	        {"url": "11.jpg", "price": "545", "desc": "2015新款韩版大码纯棉拼接圆领打底衫"},
	        {"url": "12.jpg", "price": "775", "desc": "ZK旗舰店2015夏装连衣裙春夏季连衣"},
	        {"url": "13.jpg", "price": "234", "desc": "AMII及简2015夏纯色圆领镂空短袖T恤"},
	        {"url": "9.jpg", "price": "445", "desc": "【品牌团】韩都衣舍韩版2015夏装新款"},
	        {"url": "10.jpg", "price": "666", "desc": "2015夏款粉红大布娃娃衬衫款连衣裙"},
	        {"url": "11.jpg", "price": "545", "desc": "2015新款韩版大码纯棉拼接圆领打底衫"},
	        {"url": "12.jpg", "price": "775", "desc": "ZK旗舰店2015夏装连衣裙春夏季连衣"},
	        {"url": "13.jpg", "price": "234", "desc": "AMII及简2015夏纯色圆领镂空短袖T恤"}, 
	        {"url": "9.jpg", "price": "445", "desc": "【品牌团】韩都衣舍韩版2015夏装新款"},
	        {"url": "10.jpg", "price": "666", "desc": "2015夏款粉红大布娃娃衬衫款连衣裙"},
	        {"url": "11.jpg", "price": "545", "desc": "2015新款韩版大码纯棉拼接圆领打底衫"},
	        {"url": "12.jpg", "price": "775", "desc": "ZK旗舰店2015夏装连衣裙春夏季连衣"},
	        {"url": "13.jpg", "price": "234", "desc": "AMII及简2015夏纯色圆领镂空短袖T恤"}, 
	        {"url": "9.jpg", "price": "445", "desc": "【品牌团】韩都衣舍韩版2015夏装新款"},
	        {"url": "10.jpg", "price": "666", "desc": "2015夏款粉红大布娃娃衬衫款连衣裙"},
	        {"url": "11.jpg", "price": "545", "desc": "2015新款韩版大码纯棉拼接圆领打底衫"},
	        {"url": "12.jpg", "price": "775", "desc": "ZK旗舰店2015夏装连衣裙春夏季连衣"},
	        {"url": "13.jpg", "price": "234", "desc": "AMII及简2015夏纯色圆领镂空短袖T恤"},
       
        ];


    }
]);

HomeCtrls.controller('sellerCenterCtrl', ['$scope','$state',
    function($scope,$state) {
        // $scope.stateStr = $state.current.name;
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        // 未登录
        $scope.$on('User.notLogin', function(event) {
            $scope.user_name = null;
            $scope.user_id = null;
            alert("对不起,请先登录!");
            $state.go('login');
        });
    }
]);

HomeCtrls.controller('sellerCenterSelfCtrl', ['$scope', '$state','$upload', 'User',
    function($scope, $state,$upload, User) {
        User.checkLogin();
        $scope.$on('User.isLogin', function(event) {
            $scope.user_name = User.user_name;
            $scope.user_id = User.user_id;
            $scope.detailInfo = User.detail_info;
        });

        $scope.$on('User.notLogin', function(event) {
            $scope.user_name = null;
            $scope.user_id = null;
            alert("对不起,请先登录!");
            $state.go('login');
        });

        $scope.$on('User.saveDetailSuccess', function(event) {
            alert("数据保存成功!");
        });

        $scope.saveSelfInfo = function () {
            User.saveDetail($scope.detailInfo);
        }

        $scope.detailInfo = {user_header_img: publicPath + 'home/img/default_head.png'};

        $scope.$watch('files', function() {
            $scope.upload($scope.files);
        });

        $scope.upload = function(files) {
            if (files && files.length) {
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    $upload.upload({
                        url: appPath + 'API/UserAPI/save_head_img',
                        headers: {
                            'Content-Type': file.type
                        },
                        method: 'POST',
                        data: file,
                        file: file,
                    }).progress(function(evt) {
                        var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    }).success(function(data, status, headers, config) {
                        $scope.detailInfo.user_header_img = uploadPath + 'head_img/' + data;
                        $scope.detailInfo.user_header_temp_img = uploadPath + 'head_img/thumb_' + data;
                    });
                }
            }
        };
    }
]);

// 店铺信息
HomeCtrls.controller('sellerCenterShopCtrl', ['$upload', '$scope', '$state', 'User', 'Shop',

    function($upload, $scope, $state, User, Shop) {
        User.checkLogin();
        Shop.getShopInfo();

        // 获取店铺信息
        $scope.$on('Shop.getShopInfoSuccess', function(event) {
            if (!Shop.data) {
                Shop.data = {};
            };
            $scope.editShopInfo = Shop.data;
        });

        // 已登录
        $scope.$on('User.isLogin', function(event) {
            $scope.user_name = User.user_name;
            $scope.user_id = User.user_id;
            $scope.detailInfo = User.detail_info;
        });

        // 未登录
        $scope.$on('User.notLogin', function(event) {
            $scope.user_name = null;
            $scope.user_id = null;
            alert("对不起,请先登录!");
            $state.go('login');
        });

        $scope.$watch('files', function() {
            $scope.upload($scope.files);
        });

        $scope.upload = function(files) {
            if (files && files.length) {
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    $upload.upload({
                        url: appPath + 'API/ShopAPI/save_shop_img',
                        headers: {
                            'Content-Type': file.type
                        },
                        method: 'POST',
                        data: file,
                        file: file,
                    }).progress(function(evt) {
                        var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    }).success(function(data, status, headers, config) {
                        $scope.editShopInfo.shop_img = uploadPath + 'shop_img/' + data;
                        $scope.editShopInfo.shop_img_temp = uploadPath + 'shop_img/thumb_' + data;
                    });
                }
            }
        };


        $scope.saveShopInfo = function() {
            Shop.saveShopInfo($scope.editShopInfo);
        }
    }
]);

// 商品信息
HomeCtrls.controller('sellerCenterProductCtrl', ['$upload', '$scope','$state','Product','Shop',
    function($upload, $scope,$state,Product,Shop) {
        $scope._simpleConfig = {
            //这里可以选择自己需要的工具按钮名称,此处仅选择如下五个
            toolbars: [
                ["bold", "italic", "underline", "insertunorderedlist", "insertorderedlist", "simpleupload", "removeformat", "forecolor", "backcolor", "link", "scrawl"]
            ],
            initialFrameHeight: 280,
            initialFrameWidth: 440
        }

        // 获取当前店铺的所有商品列表
        $scope.$on('Product.getProductListSuccess', function(event) {
            $scope.ProductList = Product.list;
        });

        // 获取店铺信息
        Shop.getShopInfo();
        $scope.$on('Shop.getShopInfoSuccess', function(event) {
            $scope.shopInfo = Shop.data;
            if (!$scope.shopInfo) {
                alert("对不起,请先注册店铺!");
                $state.go('sellercenter.shop');
            } else {
                Product.getList($scope.shopInfo.shop_id);
            }
        });

        // 设置新建内容
        $scope.setAddInfo = function () {
            if (!$scope.shopInfo) {
                alert("对不起,请先注册店铺!");
                $state.go('sellercenter.shop');
            };
            $scope.modalTitle='添加商品信息';
            $scope.editProductInfo = {product_img:publicPath+'home/img/default_product.png'};
        }

        // 设置修改商品信息
        $scope.setUpdateInfo = function (info) {
            $scope.modalTitle='修改商品信息';
            $scope.editProductInfo = info;
            if (!info.product_img) {
                $scope.editProductInfo.product_img = publicPath+'home/img/default_product.png';
            };
        }

        // 保存商品信息
        $scope.saveProductInfo = function () {
            $scope.editProductInfo.shop_id = $scope.shopInfo.shop_id;
            Product.saveInfo($scope.editProductInfo);
        }

        // 删除商品信息
        $scope.deleteInfo = function (productId) {
            if (confirm("确定要删除?不可恢复!")) {
                Product.deleteInfo(productId); 
                Product.getList($scope.shopInfo.shop_id);
            };
        }

        $scope.$watch('files', function() {
            $scope.upload($scope.files);
        });

        $scope.upload = function(files) {
            if (files && files.length) {
                for (var i = 0; i < files.length; i++) {
                    var file = files[i];
                    $upload.upload({
                        url: appPath + 'API/ProductAPI/save_product_img',
                        headers: {
                            'Content-Type': file.type
                        },
                        method: 'POST',
                        data: file,
                        file: file,
                    }).progress(function(evt) {
                        var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    }).success(function(data, status, headers, config) {
                        $scope.editProductInfo.product_img = uploadPath + 'product_img/' + data;
                        $scope.editProductInfo.product_img_temp = uploadPath + 'product_img/thumb_' + data;
                    });
                }
            }
        };
    }
]);

// 商品类别
HomeCtrls.controller('sellerCenterProductTypeCtrl', ['$scope','Product',
    function($scope,Product) {
        $scope.visible = function(item) {
            if ($scope.query && $scope.query.length > 0 && item.type_name.indexOf($scope.query) == -1) {
                return false;
            }
            return true;
        };

        Product.getTypeList();
        $scope.$on('Product.getPTypeListSuccess', function (event) {
            $scope.data = Product.type_list;
        });
    }
]);