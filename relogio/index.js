var maximum69Number  = function(num) {
    var numToString = num.toString();
    for (let i = 0; i < numToString.length; i++) {
        console.log(numToString[i]);
        if(numToString[i] == 6) {
            var maxValue = numToString.replaceAt(i, '9');
            return maxValue;
        }
    }
    return null;
};
String.prototype.replaceAt = function(index, replacement) {
    return this.substring(0, index) + replacement + this.substring(index + replacement.length);
}
var result = maximum69Number(9669);
console.log(result);
