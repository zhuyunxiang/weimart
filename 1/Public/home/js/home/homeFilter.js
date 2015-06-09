var filters = angular.module('filters', []);
// 过滤商品
filters.filter('filterProduct', function() {
	return function(input, type) {
		// 判断
		if ("empty" == type) {
			var arr = [];
			for (var i in input) {
				if (0 == input[i]['product_left']) {
					arr.push(input[i]);
				}
			}
			return arr;
		} else {
			return input;
		}
	}
});

// 过滤字符串
filters.filter('trimStr', ['$filter',
	function($filter) {
		var filter = function(input, length) {
			var str = input;
			if (input && input.length > length) {
				str = $filter('limitTo')(input, length) + '...';
			};
			return str;
		}
		return filter;
	}
]);

// 过滤HTML
filters.filter('trustHtml', function($sce) {
	return function(input) {
		return $sce.trustAsHtml(input);
	}
});

filters.filter('filterDelegateByType', function() {
	return function(input, type) {
		// 判断
		if (type) {
			var arr = [];
			for (var i in input) {
				if (type == input[i]['shop_super_delegate_state']) {
					arr.push(input[i]);
				}
			}
			return arr;
		} else {
			return input;
		}
	}
});