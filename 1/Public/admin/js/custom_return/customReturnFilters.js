var customReturnFilters = angular.module('customReturnFilters', []);

// 字符串按长度截取
customReturnFilters.filter('trimStr', ['$filter',
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

customReturnFilters.filter('toStamp', function($filter) {
    var limitToFilter = $filter('limitTo');
    return function(input) {
        input = input.replace(/-/g, '/');
        var date = new Date(input);
        var time = date.getTime();
        return time;
    };
});