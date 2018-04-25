
<panel-user-card>
  <section class="card-wrap" ref='wrap'>
    <i class="fa fa-times" onclick={close}></i>
    <header class="user-profile">
      <img src={user.photoURL} alt={user.displayName}>
      <p>{user.displayName}</p>
    </header>
    <main class="user-parameter">
      <div class="parameter star">
        <i class="fa fa-star"></i>
        { Object.values(this.userInfo.starredArticle).length }
      </div>
      <div class="parameter">
        <i class="fa fa-star"></i>
        123
      </div>
      <div class="parameter">
        <i class="fa fa-star"></i>
        123
      </div>
      <div class="parameter">
        <i class="fa fa-star"></i>
        123
      </div>
    </main>
  </section>
  <script>
    that = this;
    this.user = this.parent.user;
    this.userInfo = this.parent.userInfo
    console.log(Object.values(this.userInfo.starredArticle).length)









    close() {
      that.refs.wrap.classList.add('slide-left-back');
      setTimeout(() => {
        that.parent.usercard = false;
        that.parent.update();  
      }, 1000);
    }

    this.on('mount', function() {
      // that.refs.wrap.classList.add('slide-left')
    })
  </script>

  <style :scoped>
    .card-wrap {
      position: fixed;
      right: 0;
      top: 0;
      height: 500px;
      width: 300px;
      background: #fff;
      box-shadow: -2px 3px 8px 0 rgba(50, 50, 50, 0.2);
      z-index: 3;
      animation: slide-left 1s ease-in-out forwards;
    }
    .card-wrap > i {
      position: absolute;
      right: 10px;
      top: 10px;
      color: #F07277;
      font-weight: 100;
      font-size: 1.1em;
      line-height: 40px;
      cursor: pointer;
    }

    .card-wrap .user-profile {
      margin: 59px 0;
      border-top: 1px solid #EEEFF1;
      border-bottom: 1px solid #EEEFF1;
      width: 100%;
      text-align: center;
      height: 70px;
      padding: 20px 0;
    }
    .card-wrap .user-profile img {
      width: 40px;
      height: auto;
      border-radius: 3px;
    }

    .card-wrap.slide-left-back {
      animation: slide-left-back 1.5s ease-in-out forwards;
    }

    @keyframes slide-left-back {
      to {right: -100%; opacity: 0}
    }
    @keyframes slide-left {
      from {right: -100%; opacity: 0}
      to {right: 0; opacity: 1}
    }

    .card-wrap .user-parameter {
      width: 100%;
      display: flex;
      flex-wrap: wrap;
      position: relative;
      bottom: 0;
      height: 50%;
    }
    
    .card-wrap .user-parameter > *{
      width: 50%;
      flex: 1 1 auto;
      text-align: center;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
  </style>
</panel-user-card>
