
<faqs>
  <home-header page={this.opts.page}>
    <div class="head-middle">
      <h1>FAQ</h1>
      <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt eveniet aspernatur culpa, quis minima quae! A ipsa harum,
        iste officiis recusandae sed eaque aliquid sint nesciunt repellendus, provident nostrum totam?</p>
    </div>
  </home-header>
  <script>

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
  </style>
</faqs>
