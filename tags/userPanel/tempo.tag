
<tempo>
  <div class="panel">
    <aside class="sideBar">
      <div class="head">
        <img src="./img/LOGO.png" alt="logo">
      </div>
      <ul class="sidebar-middle">
        <li>Panel1</li>
        <li>Panel2</li>
        <li>Panel3</li>
        <li>Panel4</li>
      </ul>
      <button class="logOut" onclick={logOut}>Log Out</button>
    </aside>
    <main>
      <div class="head">
        <img src={this.parent.user.photoURL} alt={this.parent.user.displayName}>
        <span class="head-username">Hi, {this.parent.user.displayName} !</span>
      </div>
    </main>
  </div>
  
  <script>
    var that = this;
    logOut() {
      firebase.auth().signOut().then(function () {
        // Sign-out successful.
      }).catch(function (error) {
        // An error happened.
      });
    }

    this.on('mount', function () {
      firebase.auth().onAuthStateChanged(function (userObj) {
        that.parent.user = firebase.auth().currentUser;
        that.parent.update();
      })
    })
  </script>
  
  <style>
    .panel {
      display: flex;
  
    }
  
    .sideBar {
      flex-basis: 280px;
      background: #222;
      height: 100vh;
    }
  
    .sideBar .head {
      text-align: center;
      padding: 20px 0;
    }
  
    .sideBar .head img {
      width: 50px;
      height: auto;
    }
  
    .sidebar-middle {
      width: 100%;
      color: #fff;
      padding: 20px 0;
  
    }
  
    .sidebar-middle li {
      list-style: none;
      padding: 10px 0 10px 49px;
      transition: all .3s;
      cursor: pointer;
    }
  
    .sidebar-middle li:hover {
      background: #414B60;
    }
  
    main {
      flex: 1 1 auto;
      background: lightblue;
    }
  
    main .head img {
      width: 50px;
      border-radius: 50%;
      padding: 30px;
      vertical-align: middle;
    }
  </style>
</tempo>
