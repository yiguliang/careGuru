
<infoPiece>
  <section class="piece-wrap wrap-anime" onclick={checkInfo}>
    <i class={ fa: true, 'fa-star':true, starred: this.opts.data.starred } onclick={star}></i>
    <img src={this.opts.data.imgurl} alt="piece-img" class="piece-img">
    <div class="text-wrap">
      <h3 class="text-title">{this.opts.data.title}</h3>
      <p class="text-detail">
        {this.opts.data.content}
      </p>
  </div>
  </section>
  
  <script>
    var that = this;
    this.userInfo = this.parent.userInfo;
    star(e) {
      //give the star a style change temporarily (in the view layer)
      var alreadyStarred = Object.values(e.target.classList).includes('starred');
      

      //remove star label from the firebase database
      if(alreadyStarred) {
        var key = e.item.i.firebaseId;
        firebase.database().ref("/careGuru/" + this.userInfo.uid + "/starredArticle/" + key).set(null);
        e.target.classList.remove('starred');
        e.stopPropagation();
        return;
      }

      //label the item as starred one in the database
      e.target.classList.add('starred');
      var key = firebase.database().ref("/careGuru/" + this.userInfo.uid + "/starredArticle").push().key;
      firebase.database().ref("/careGuru/" + this.userInfo.uid + "/starredArticle/" + key).set(e.item.i);
      e.stopPropagation();
    }

    this.on('mount', function() {
      
    })
  </script>

  <style>
    .piece-wrap {
      width: 340px;
      height: 90px;
      background: #fff;
      box-shadow: 2px 4px 10px 0 rgba(0, 0, 0, 0.2);
      overflow: hidden;
      border-radius: 4px;
      display: flex;
      justify-content: space-around;
      align-items: center;
      margin: 10px auto;
      position: relative;
      max-height: 100px;
      transition: all 0.5s ease-in-out;
      cursor: pointer;
    }
    .piece-wrap .fa-star {
      position: absolute;
      top: 5px;
      right: 5px;
      color: #efefef;
      transition: color 1s ease-in-out;
    }

    .piece-wrap img {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      
      transition: inherit;

    }
    .piece-wrap .text-wrap .text-detail {
      white-space: nowrap;
      overflow: hidden;
      width: 256px;
      text-overflow: ellipsis;
      font-size: 12px;
      transition: inherit;
    }

    
  </style>
</infoPiece>
