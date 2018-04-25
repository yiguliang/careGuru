<home>
    <home-header page={this.opts.page}>
      <div class="head-middle">
        <h1>CareGuru</h1>
        <p>We help you learn to get health care in the U.S.</p>
        <button class="playBt" onclick={playVideo}>
          <i class="fa fa-play-circle"></i>
          <span>Watch Video</span>
        </button>
      </div>
    </home-header>
    <div if={videoPlay} ref='videoPlay'>
      <videoPlay></videoPlay>
    </div>
    <dataView></dataView>
    <footerWave></footerWave>

  <script>
    this.on('mount', function() {
      detectScroll();
    })
  </script>

  <style>
    .header .head-middle {
      text-align: center;
      margin-top: 100px;
    }
    .header .head-middle h1{
      font-size: 2.5em;
      font-weight: 100;
      padding: 10px 0;
      text-shadow: 2px 2px rgba(0, 0, 0, 0.2);
    }
    .header .head-middle p{
      font-size: 1.4em;
      font-weight: 100;
      padding: 20px 20%;
      text-shadow: 1px 1px rgba(0, 0, 0, 0.2);
      position: relative;
    }
    .header .head-middle p:after{
      content: "";
      position: absolute;
      bottom: -10px;
      left: 0;
      right: 0;
      margin: 0 auto;
      width: 40%;
      height: 1px;
      border-radius: 50%;
      background: rgb(255,255,255);
      background: linear-gradient(90deg, rgba(255,255,255,0.38279061624649857) 0%, rgba(255,255,255,0.5872724089635855) 50%, rgba(255,255,255,0.3295693277310925) 100%);

    }
    .header .head-middle .playBt{
      color: inherit;
      margin-top: 40px;
      background: transparent;
      border: 1px solid #fff;
      padding: 7px 7px;
      border-radius: 15px;
      font-size: 13px;
      line-height: 1em;
    }
    .header .head-middle .playBt span{
      transition: all .5s;
    }
    .header .head-middle .playBt i {
      transition: all .5s;
    }

    .header .head-middle .playBt:hover span{
      opacity: 0;
      transform: translateX(-10px);
      display: inline-block;
    }
    .header .head-middle .playBt:hover i{
      display: inline-block;
      transform: rotate(360deg);
      transform: translateX(40px);
    }

  </style>
</home>
