
<reminder>

  <div class="wrap">
    <div class="head-middle">
      <h1>Personalized Health Reminder</h1>
      <p>This reminder shows you annual health screens you need to take, and allows you to add your own items</p>
      <p class = "tipText">Currentlt we only have data for adults</p>
      <p>displaying info for : {personCategory}</p>
    </div>

    <div class="reminder-item">
      <reminder-item each={ reminderData }></reminder-item>
      <reminder-item each={ ownReminderData }></reminder-item>
      <input class = "add-form" type="text" placeholder="Add your own" onkeypress={ addItem }>
    </div>
  </div>



    <!--
    <button class="btn btn-danger" disabled={ reminderData.filter(onlyDone).length == 0 }>
        <i>You've completed { reminderData.filter(onlyDone).length } screens</i>
    </button>
    -->

  <script>
    var that = this;
    this.reminderData = [];
    this.ownReminderData = [];
    this.uid = this.parent.parent.uid;

    this.age;
    this.gender;
    this.personCategory;
    this.needCorrectDate = false;

    var database = firebase.database();
    var userRef = database.ref('/careGuru/' + this.uid);
    var userReminderRef = userRef.child('/userReminder');
    var userOwnReminderRef = userRef.child('/userOwnReminderRef');
    var ageRef = userRef.child('/surveyData/age');
    var genderRef = userRef.child('/surveyData/gender');

    var reminderDataRef = database.ref('/careGuru/reminderDate');

    //read user age
    ageRef.once('value',function(snapshot){
    that.age = snapshot.val();
    });

    //read user gender
    genderRef.once('value',function(snapshot){
    that.gender = snapshot.val().toLowerCase();
    });

    //determine user category or is missing data
    switch (true) {
    case (that.gender == "female" && (that.age >= 18 && that.age <= 39 )):
      that.personCategory = "woman18to39";
      break;
    case (that.gender == "female" && (that.age >= 40 && that.age <= 64 )):
      that.personCategory = "woman40to64";
      break;
    case (that.gender == "female" && (that.age >= 65)):
      that.personCategory = "woman65plus";
      break;
    case (that.gender == "male" && (that.age >= 18 && that.age <= 39 )):
      that.personCategory = "man18to39";
      break;
    case (that.gender == "male" && (that.age >= 40 && that.age <= 64 )):
      that.personCategory = "man40to64";
      break;
    case (that.gender == "male" && (that.age >= 65)):
      that.personCategory = "man65plus";
      break;
    default:
      that.needCorrectDate = true;
  }

    // request survey data
    if (this.needCorrectDate == true){
      alert("please enter the correct data in survey");
    };

    // get screen data base on user's category
    var personalReminderDataRef = reminderDataRef.child('/Screen/'+this.personCategory);
    personalReminderDataRef.on('value',function(snapshot){
      var dataToBePushed = snapshot.val();
      var reminderDataArray = [];
      for (key in dataToBePushed){
        reminderDataArray.push(dataToBePushed[key]);
      }

      that.reminderData = reminderDataArray;
      userReminderRef.set(reminderDataArray);
      that.update();
    });

    userOwnReminderRef.on('child_added',function(snapshot) {
      var data = snapshot.val(); // Object with properties as keys
					data.id = snapshot.key;
			that.ownReminderData.push(data);
			that.update();
    });

    addItem(event){
			var newTask = {};
			if (event.which === 13) {
				newTask.task = event.target.value;	// Grab the user task value
				newTask.done = false;
				var newKey = userOwnReminderRef.push().key;
        userOwnReminderRef.child(newKey).set(newTask);
				event.target.value = "";	// RESET INPUT
				event.target.focus();			// FOCUS BACK ON INPUT
			}
		}

  </script>

  <style>
  :scope {
			display: block;
		}

  .wrap {
    display: flex;
    width: 100%;
    height: 100%;
  }

  .head-middle {
    text-align: center;
    margin-top: 40px;
  }

  .head-middle h1{
    font-size: 1.4em;
    font-weight: 100;
    padding: 10px 0;
    text-shadow: 2px 2px rgba(0, 0, 0, 0.2);
  }

  .head-middle p{
    font-size: 1em;
    font-weight: 100;
    padding: 20px 20%;
    text-shadow: 1px 1px rgba(0, 0, 0, 0.2);
    position: relative;
  }

  .tipText {
    color: #EE7379;
    display: flex;
    width: 50%;
    margin: 0 auto;
    padding-top: 30px;
    justify-content: space-around;
    text-align: center;
  }

  .reminder-item{
    width: 100%;
    height: 100%;
    color: #EE7379;
    text-align: center;
    line-height: 2em;
  }

  .add-form {
    font-size: 1.4em;
    margin-top: 30px;
  }
  </style>
</reminder>
