var filters = angular.module('filters', []);

filters.filter('filterProduct', function () {
	return function (input, type) {
		// 判断
		if ("empty" == type) {
			var arr = [];
			for(var i in input) {
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