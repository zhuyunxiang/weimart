var HomeCtrls = angular.module('HomeCtrls', []);

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
                        $scope.userDetailInfo.user_header_img = publicPath + 'Uploads/head_img/' + data;
                        $scope.userDetailInfo.user_header_temp_img = publicPath + 'Uploads/head_img/thumb_' + data;
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

        // $scope.poplarSpring = [
        // ];


    }
]);