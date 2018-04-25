
<sceneActionWarn>
  <p> {this.opts.data.optionWarn.warnName}</p>
  <button onclick={confirm}>Continue with This Option</button>
  <button onclick={cancle}>Choose Again</button>
  <script>
    confirm() {
      //change the scene and switch the warn and feedback
      var nextSceneId = this.opts.data.optionLinkTo;
      this.parent.currentScene = this.parent.scenarioData[nextSceneId -1];
      this.parent.currentOption = undefined;
      this.parent.feedback = this.opts.data.optionWarn.choosedFeedback;

      //change the property of the character
      var healthChange = this.opts.data.optionResults.health;
      var moneyChange = this.opts.data.optionResults.money;
      var health = this.parent.health;
      var money = this.parent.money;
      var lefthealth = this.calc(health, money, healthChange, moneyChange).lefthealth;
      var leftMoney = this.calc(health, money, healthChange, moneyChange).leftMoney;
      this.parent.health = lefthealth;
      this.parent.money = leftMoney;

      //judge whether to end the game
      if(lefthealth <= 5 || leftMoney <= 0) {
        this.parent.gameover = true;
      }

      this.parent.update();
    }
    cancle() {
      this.parent.currentOption = undefined;
      this.parent.update();
    }

    calc(health, money, healthChange, moneyChange) {
      var lefthealth = health + healthChange;
      var leftMoney = money + moneyChange;
      return {
        lefthealth: lefthealth,
        leftMoney: leftMoney
      }
    }
  </script>

  <style>
    :scope p {
      color: #000;
    }
  </style>
</sceneActionWarn>
