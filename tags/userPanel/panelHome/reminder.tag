
<reminder>
  <div>
    <h3>Personalized Health Reminder</h3>
    <p>This reminder shows you annual health screens you need to take, and allows you to add your own items</p>
    <p>Currentlt it only works for adults</p>
    <p>displaying info for : {personCategory}</p>
  </div>


    <reminder-item each={ reminderData }></reminder-item>
    <!-- <input type="text" placeholder="Add your own" onkeypress={ addItem }> -->

    <!--
    <button class="btn btn-danger" disabled={ reminderData.filter(onlyDone).length == 0 }>
        <i>You've completed { reminderData.filter(onlyDone).length } screens</i>
    </button>
    -->

  <script>
    var that = this;
    this.reminderData = [];
    this.uid = this.parent.parent.uid;
    this.age;
    this.gender;
    this.personCategory;
    this.needCorrectDate = false;

    var database = firebase.database();
    var userRef = database.ref('/careGuru/' + this.uid);
    var ageRef = userRef.child('/surveyData/age');
    var genderRef = userRef.child('/surveyData/gender');

    var reminderDataRef = database.ref('/careGuru/reminderDate');

    ageRef.once('value',function(snapshot){
    // handler code to be executed
    age = snapshot.val();
    });

    genderRef.once('value',function(snapshot){
    // handler code to be executed
    gender = snapshot.val().toLowerCase();
    });

    switch (true) {
    case (gender == "female" && (age >= 18 && age <= 39 )):
      that.personCategory = "woman18to39";
      break;
    case (gender == "female" && (age >= 40 && age <= 64 )):
      that.personCategory = "woman40to64";
      break;
    case (gender == "female" && (age >= 65)):
      that.personCategory = "woman65plus";
      break;
    case (gender == "male" && (age >= 18 && age <= 39 )):
      that.personCategory = "man18to39";
      break;
    case (gender == "male" && (age >= 40 && age <= 64 )):
      that.personCategory = "man40to64";
      break;
    case (gender == "male" && (age >= 65)):
      that.personCategory = "man65plus";
      break;
    default:
      that.needCorrectDate = true;
  }

    if (this.needCorrectDate == true){
      alert("please enter the correct data in survey");
    };

    var personalReminderDataRef = reminderDataRef.child('/Screen/'+this.personCategory);
    personalReminderDataRef.on('value',function(snapshot){
    // handler code to be executed
      var dataToBePushed = snapshot.val();
      var reminderDataArray = [];
      for (key in dataToBePushed){
        reminderDataArray.push(dataToBePushed[key]);
      }
      that.reminderData = reminderDataArray;
      that.update();
    });

    console.log(this.reminderData);

  </script>

  <style>
  </style>
</reminder>
