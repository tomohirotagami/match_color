$(function($) {
  function equalHeight(group) {
    tallest = 0;
    group.each(function() {
      thisHeight = $(this).height();
      if(thisHeight > tallest){
        tallest = thisHeight;
      }
    });
    group.height(tallest);
  }

  $(document).ready(function() {
    //.hogeの中にあるdivの高さを全て同じにする
    equalHeight($("section"));
  });
})(jQuery);

//Facebook認証のJS SDK
/*<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '889085201238046',
      xfbml      : true,
      version    : 'v2.6'
    });
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>*/