
<app>
  <!-- <login></login> -->
  <div class={wrap:videoPlay || loginPanel } if={!user}>  <!--prevent background scrolling -->
    <div class="shadow" show={videoPlay || loginPanel }></div>
    <home if={ page==='home' } page = {page}></home>
    <faqs if ={ page === 'faqs' } page = {page}></faqs>
    <contact if ={ page === 'contact' } page = {page}></contact>
    <logIn if={ loginPanel }></logIn>
  </div>

  <personPanel if={user}></personPanel>

  <script>
    var that = this;
    this.page = "home";
    this.videoPlay = false;
    this.loginPanel = false;
    this.user = false;


    var Router = route.create();
    Router('*', function (page) {
      that.page = page;
      that.update();
      // console.log(that.page)
    })

    route.start(true);


    //  window.onload = function() {
        firebase.auth().onAuthStateChanged(function (userObj) {
         that.user = firebase.auth().currentUser;
         that.update();
        //  console.log(that.user)
       })
    //  }

  </script>



  <style>
    .wrap {
      position: fixed;
    }
    .shadow {
    position: fixed;
    z-index: 11;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background: rgba(0, 0, 0, 0.4);
  }
  </style>
</app>
