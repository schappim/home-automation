/////////////////// Refresh Photo ///////////////////

$("#camera-refresh").click(function(){
  console.log("clicked")

    $.post("/camera/refresh", function(data, status){
        location.reload();
        //alert("Data: " + data + "\nStatus: " + status);
    });
});


$(".leds").change(function(){

  var led = this.id;
  var status = $(this).val();
  
  console.log(led + ":" + status);

  $.post("/led/" + led + "/" + status, function(data, status){
      console.log(data);
  });


});


/////////////////// Weather Guagues ///////////////////

$.fn.gauge = function(opts) {
  this.each(function() {
    var $this = $(this),
        data = $this.data();

    if (data.gauge) {
      data.gauge.stop();
      delete data.gauge;
    }
    if (opts !== false) {
      data.gauge = new Gauge(this).setOptions(opts);
    }
  });
  return this;
};
