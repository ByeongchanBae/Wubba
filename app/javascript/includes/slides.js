 $(function(){
    var $activeSlide = $('#slides .slide:first-child');

    //show first slide
    $activeSlide.addClass("showing");

    $("#decline").on("click", function(){
      goToSlide('decline');
  });


  $("#approve").on("click", function(){
    var user_id = $activeSlide.data("id")
    $.ajax({
      url: "/approve/" + user_id,
      method: "post",
      dataType: "ajax"
    })
      goToSlide('approve');
  });

  function goToSlide(action){
    $activeSlide.removeClass("showing");
    $activeSlide = $activeSlide.next(".slide")

    if(action == "approve"){
      console.log(action);
    } else {
      console.log(action);
    }

  $activeSlide.addClass("showing")

  // function goToSlide(n){
    // slides[currentSlide].className = 'slide';
    // currentSlide = (n+slides.length)%slides.length;
    // slides[currentSlide].className = 'slide showing';
  }
});
