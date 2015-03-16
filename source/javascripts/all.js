function floatAnimation(ele) {
    console.log("ZOMG");
    var distance = 8;
    $(ele).animate({
        'top': "+="+distance+"px"
    },1500,"swing",function(){
        $(ele).animate({
            'top': "-="+distance+"px"
        },1300,"swing",function(){
            floatAnimation(ele);
        });
    });
}

skel.on('ready', function() {
    console.log("ZOMG");
    //floatAnimation($('#cloudcity'));
});
