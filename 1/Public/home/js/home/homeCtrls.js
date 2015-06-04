var HomeCtrls = angular.module('HomeCtrls', ['ng.ueditor','ui.tree']);

// 主页的Controller Start
HomeCtrls.controller('homeCtrl', ['$scope', 'Product','Shop',
    function($scope, Product,Shop) {
        Product.getTypeList();
        Product.getRecommendList();
        Shop.getRecommendShopInfo();

        $scope.tplURLs = {
            pictureShow: publicUrl + 'tpl/home/picture_show.html',
            leftNavOuterContainer: publicUrl + 'tpl/home/nav_containers.html',
            superAdContainer: publicUrl + 'tpl/home/super_ad.html',
            rightNavOuterContainer: publicUrl + 'tpl/home/right_container.html',
        };

        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
            'app': commenUrl + 'img/app.png',
        };

        $scope.changeGoods = function () {
            Product.getRecommendList();
        }

        $scope.changeRecommendShop = function () {
            Shop.getRecommendShopInfo();
        }

        $scope.$on('Product.getPTypeListSuccess', function (event) {
            var firstFourtypeList = [];
            var secondTwotypeList = [];
            var thirdOnetypeList = [];
            var fourthOnetypeList = [];
            for(var i in Product.type_list){
                if ( i < 4) {
                    firstFourtypeList.push(Product.type_list[i]);
                };

                if (i < 6 && i > 3) {
                    secondTwotypeList.push(Product.type_list[i]);
                };

                if (i == 6) {
                    thirdOnetypeList.push(Product.type_list[i]);
                };

                if (i == 7) {
                    fourthOnetypeList.push(Product.type_list[i]);
                };
            }
            secondTwotypeList[0].ad_1 = "热销品牌";
            secondTwotypeList[0].ad_2 = "最畅销高级单反";
            secondTwotypeList[1].ad_1 = "潮流单品";
            secondTwotypeList[1].ad_2 = "家电低至五折";

            $scope.firstFourtypeList = firstFourtypeList;
            $scope.secondTwotypeList = secondTwotypeList;
            $scope.thirdOnetypeList = thirdOnetypeList;
            $scope.fourthOnetypeList = fourthOnetypeList;
        });

        $scope.$on('Product.getRecommendListSuccess', function (event) {
            var recommend_list= [];
            for(var i in Product.recommend_list){
                if (i < 4) {
                    recommend_list.push(Product.recommend_list[i]);
                    // recommend_list.push(Product.recommend_list[i]);
                };
            }

            $scope.recommendProductList = recommend_list;
        });

        $scope.$on('Shop.getRecommendShopInfoSuccess', function (event) {
            var recommend_list= [];
            for(var i in Shop.recommend_list){
                if (i < 4) {
                    recommend_list.push(Shop.recommend_list[i]);
                };
            }
            $scope.recommendShopList = recommend_list;
        });
        
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
HomeCtrls.controller('popularBrandCtrl', ['$scope', 'PopularBrand',
    function($scope, PopularBrand) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        $scope.tplURLs = {
            popularBrandNav: publicUrl + 'tpl/home/popular_brand_nav.html',
            popularBrandMain: publicUrl + 'tpl/home/popular_brand_main.html',
        };

        PopularBrand.getBrandList();

        $scope.$on('PopularBrand.brandListUpdate', function(event) {
            $scope.brandList = PopularBrand.brandList;
        });

        $scope.item_list = [{
            "title": "迪芙斯D:FUSE女鞋",
            "url": "25.jpg",
            "content": "迪芙斯D:FUSE，来自欧洲的潮流女鞋。它将北欧设计中的简洁、利落、以及略带男性化的酷感十足融入到品牌设计中，为中国及亚洲女性的踝下注入一缕清新独特的北欧风潮。迪芙斯D:FUSE凭借它的欧洲设计团队和斯堪的纳维亚的文化背景，容东方文化的儒雅与西方文化的奔放于一身，为渴望与众不同，向往摩登生活的城市女性提供一场以生活为观众的时尚T台秀。"
        }, {
            "title": "卡雷尔CEREL VOGUE女装",
            "url": "26.jpg",
            "content": "CEREL VOGUE是一个关于经典而时尚的传奇。它优雅、自信、淡定从容，打造的是一种优雅自信的生活方式。 卡雷尔品牌强调女性的现代感、有品味的成熟感。服装面料、皮料均采用欧洲最时尚面料，质地精良、板型简洁、身形舒适，设计从整体上提现女性自然、浪漫的气质风范。品质生活，优雅从这一刻绽放！"
        }, {
            "title": "seasonwind季候风",
            "url": "27.jpg",
            "content": "季候风（seasonwind）以“办公室的时尚”为品牌核心，包括两个方面：一是主要适用于办公室的时尚通勤装，二是演绎白领丽人的时尚生活观念：忙碌而快乐，充实而享受，在日常工作生活中演绎属于自己的时尚。 季候风（seasonwind）目标消费群年龄定位在25-35岁之间，主要以公司职员、公务员等中等或中等以上收入阶层为主。"
        }, {
            "title": "妖精的口袋",
            "url": "28.jpg",
            "content": "无论什么样的女孩子，心里都藏着一块地方，这块地方不会因为年岁或经历被磨平和改变，因为那里住着一个妖精，天真、热情、多变、敏感、却又情绪化、孩子气、古灵精怪、叫人捉摸不透，那是原本真实的你的影子，美好的你，永远不会消失。"
        }, {
            "title": "迪芙斯D:FUSE女鞋",
            "url": "29.jpg",
            "content": "迪芙斯D:FUSE，来自欧洲的潮流女鞋。它将北欧设计中的简洁、利落、以及略带男性化的酷感十足融入到品牌设计中，为中国及亚洲女性的踝下注入一缕清新独特的北欧风潮。迪芙斯D:FUSE凭借它的欧洲设计团队和斯堪的纳维亚的文化背景，容东方文化的儒雅与西方文化的奔放于一身，为渴望与众不同，向往摩登生活的城市女性提供一场以生活为观众的时尚T台秀。"
        }, {
            "title": "卡雷尔CEREL VOGUE女装",
            "url": "30.jpg",
            "content": "CEREL VOGUE是一个关于经典而时尚的传奇。它优雅、自信、淡定从容，打造的是一种优雅自信的生活方式。 卡雷尔品牌强调女性的现代感、有品味的成熟感。服装面料、皮料均采用欧洲最时尚面料，质地精良、板型简洁、身形舒适，设计从整体上提现女性自然、浪漫的气质风范。品质生活，优雅从这一刻绽放！"
        }, {
            "title": "seasonwind季候风",
            "url": "27.jpg",
            "content": "季候风（seasonwind）以“办公室的时尚”为品牌核心，包括两个方面：一是主要适用于办公室的时尚通勤装，二是演绎白领丽人的时尚生活观念：忙碌而快乐，充实而享受，在日常工作生活中演绎属于自己的时尚。 季候风（seasonwind）目标消费群年龄定位在25-35岁之间，主要以公司职员、公务员等中等或中等以上收入阶层为主。"
        }, {
            "title": "妖精的口袋",
            "url": "28.jpg",
            "content": "无论什么样的女孩子，心里都藏着一块地方，这块地方不会因为年岁或经历被磨平和改变，因为那里住着一个妖精，天真、热情、多变、敏感、却又情绪化、孩子气、古灵精怪、叫人捉摸不透，那是原本真实的你的影子，美好的你，永远不会消失。"
        }];
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
HomeCtrls.controller('productListCtrl', ['$scope','$stateParams','Product',
    function($scope,$stateParams,Product) {
        var type_id = $stateParams.id;

        Product.getTypeById(type_id);
        $scope.$on('Product.getTypeByIdSuccess', function (event) {
            $scope.currentTypeInfo = Product.currentTypeInfo;
        });

        $scope.$on('Product.getProductListByIdSuccess', function (event) {
            $scope.list = Product.list;
        });

        $scope.$on('Product.getFatherListByIdSuccess', function (event) {
            $scope.fatherList = Product.fatherList;
        });



        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
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

        // 排序类别
        $scope.orderType = 'time';

        // 设置排序类别
        $scope.setOrderType = function (type) {
            $scope.orderType = type;
        }

        // 获取所有下拉
        Product.getTypeListDropArr();
        $scope.$on('Product.getTypeListDropArrSuccess', function (event) {
            $scope.typeListForDrop = Product.type_drop_list;
        });

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
            if (info.types[0]) {
                $scope.editProductInfo.type_id = info.types[0].type_id;
            };
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
HomeCtrls.controller('sellerCenterProductTypeCtrl', ['$scope', 'Product',
    function($scope, Product) {
        $scope.visible = function(item) {
            if ($scope.query && $scope.query.length > 0 && item.type_name.indexOf($scope.query) == -1) {
                return false;
            }
            return true;
        };

        Product.getTypeList();
        $scope.$on('Product.getPTypeListSuccess', function(event) {
            $scope.data = Product.type_list;
        });

        $scope.setAdd = function(typeId) {
            if (typeId) {
                $scope.editPTypeInfo = {
                    'super_type_id': typeId
                };
            } else {
                $scope.editPTypeInfo = {
                    'super_type_id': 0
                };
            }
            $scope.modalTitle = "添加商品类别";
        }

        $scope.removeType = function(node) {
            if (node.super_type_id != '0') {
                if (confirm("确定要删除吗?不可恢复!")) {
                    Product.removePtypeInfo(node.tyep_id);
                };
            } else {
                alert("对不起,你没有权限!");
            }
        }

        $scope.savePTypeInfo = function() {
            Product.savePtypeInfo($scope.editPTypeInfo);
        }
    }
]);

// 商品详情页
HomeCtrls.controller('productDetailCtrl', ['$scope', '$state', '$stateParams', 'Product',
    function($scope, $state, $stateParams, Product) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };

        Product.getCurrentProduct($stateParams.id);
        $scope.$on('Product.getCurrentProductSuccess', function (event) {
            $scope.productInfo = Product.currentCurrentProduct;
            console.log(Product.currentCurrentProduct);
        });
    }
]);

// 店铺详情页
HomeCtrls.controller('shopDetailCtrl', ['$scope', '$state', '$stateParams',
    function($scope, $state, $stateParams) {
        $scope.imageURLs = {
            'publicUrl': publicUrl,
            'logo': commenUrl + 'img/logo-mini.png',
        };
    }
]);