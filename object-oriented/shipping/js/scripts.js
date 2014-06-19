var cost = 0;
var volume = 0;
var weight = 0;

var Package = {
    volume: function() {
        return this.height * this.length * this.width;
    },
    shipping: function() {
        volume = this.volume();
        if ( volume < 100 ) {
            cost = 2.5;
        } else {
            if (volume >= 100 && volume < 500) {
                cost = 5;
            } else {
                cost = 10;
            }
        }
        if ( this.weight > 2 && this.weight < 10 ) {
            cost *= 2;
        } else {
            if ( this.weight >= 10 ) {
                cost *= 3;
            }
        }
        return cost;
    }
}