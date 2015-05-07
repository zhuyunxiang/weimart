var filters = angular.module('filters', []);

filters.filter('filterProduct', function () {
	return function (input, type) {
		// 判断
		if ("A" == type) {
			var arr = [];
			for(var i in input) {
				if ("A" == input[i]['product_state']) {
					arr.push(input[i]);
				}
			}
			return arr;
		} else if ("S" == type) {
			var arr = [];
			for(var i in input) {
				if ("S" == input[i]['product_state']) {
					arr.push(input[i]);
				}
			}
			return arr;
		} else if ("I" == type) {
			var arr = [];
			for(var i in input) {
				if ("I" == input[i]['product_state']) {
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