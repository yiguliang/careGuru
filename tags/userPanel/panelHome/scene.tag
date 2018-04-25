
<scene>
  <section class="scene-wrap wrap-anime" if={!gameover}>
    <p>Hello! I'm Greg. I'm 20 years old. I'm a junior in Boston College junior. I'm an international student from Singapore, and I have BC’s student health insurance.
</p>
    <sceneActionfeedback data = {feedback} if = {feedback}></sceneActionfeedback>
    <sceneBoard data = {currentScene}></sceneBoard>
    <sceneActionWarn data = {currentOption} if = {currentOption}></sceneActionWarn>
    <div class="button-wrap">
      <button onclick={option} id = {i.optionLinkTo} each = {i in currentScene.options}>{i.optionName}</button>
    </div>

    <p>health: {health}</p>
    <p>money: {money}</p>
  </section>
  <section class="scene-gameover" if={gameover}>
    The Game is Over, be cautious !!!
  </section>
  <script>
    this.gameover = false;
    this.health = 50;
    this.money = 100;
    this.feedback = undefined;
    this.scenarioData = [
      {
        question: "As George, what should you do?",
        descrip: "Before Christmas, Greg went to snowboarding in Vail, Colorado with a friend. It’s his first time on the snow so he’s excited. His friend, George, is an experienced snowboarder. After a few practices on the learning slope, Greg became very confident on himself and decided to go to a blue trail with George. The first run went well and Greg started to loose his carefulness. On his second run, Greg failed to manage his speed at a shape turn, and hit a tree. He went unconscious. Fortunately, Greg’s helmet got his consciousness back quickly, but he felt difficult to breath well because of the hit in his chest. He’s left shin also hurts badly and couldn’t stand up. George noticed Greg’s situation and tried to help. Greg told George his situation and says he’s in stable condition.",
        imgurl: "sadsadada",
        sceneId: 1,
        options: {
          option1: {
            optionName: "Call 911 to ask for an ambulance",
            optionLinkTo: 4,
            optionResults: {
              health: +25,
              money: -40
            },
            optionWarn: {
              warnName: "Have you think about: Even though 911 is the go-to resource for seeking emergency help, they may not have equipment and access to go up to the mountain. This may result a very long waiting time or being redirected to other rescuing agencies",
              choosedFeedback: "911 answered the call and come to the ski resort. However, their vehicle couldn’t come up to where Greg is. Paramedics asked the Ski Patrol to rescue Greg down and took him into the hospital directly after half an hour. Greg got x-rayed and diagnosed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
            },
          },
          option2: {
            optionName: "Help Greg to snowboard down to the Ski Patrol office for help",
            optionLinkTo: 3,
            optionResults: {
              health: -50,
              money: -0
            },
            optionWarn: {
              warnName: "STOP! Moving an injured person without medical assessment is extremely risky and may cause further injuries.",
              choosedFeedback: "You and Grey managed to come down to the bottom (miraculously), but Grey’s situation is much more worse. He’s in huge pain. Greg found unsafe to let you make decisions for him. He decided to make his own decisions."
            },
          },
          option3: {
            optionName: "Ask an experienced skier who is passing by to contact Ski Patrol for help",
            optionLinkTo: 2,
            optionResults: {
              health: +0,
              money: +0
            },
            optionWarn: {
              warnName: "Make sure the skier knows the exact location and what happened to Greg",
              choosedFeedback: "Ski patrollers got notified and came to Gray in around 10 minutes. They put Greg in a rescue toboggan to take him down the mountain."
            },
          },
          option4: {
            optionName: "Snowboard down the mountain yourself to the Ski Patrol office for help",
            optionLinkTo: 2,
            optionResults: {
              health: -5,
              money: +0
            },
            optionWarn: {
              warnName: "Are you sure? Greg is injured and in pain. Are you sure you want to leave him in the cold alone and unattended?",
              choosedFeedback: "Greg waited in the cold by himself lonely and scared for around 10 minutes. Ski patrollers came and put Greg in a rescue toboggan to take him down the mountain "
            },
          }
        }
      },
      {
        question: "As Greg, what do you want to do?",
        descrip: "In the Ski Patrol office, patrollers examined Greg briefly. Greg seemed very conscious, and could response to all questions normally. His breathing difficulties went away. His blood pressure and other health indicating measurements were within normal range. However,  his left shin kept giving him pain. The on-site doctor said she couldn’t tell if Greg’s bones are broken because of no x-ray. She gave Greg ice packs, wrapped his shin with supports, and suggested Greg to go to another doctor.",
        imgurl: "sadsadada",
        sceneId: 2,
        options: {
          option1: {
            optionName: "Ask the ski patrol office to call you an ambulance",
            optionLinkTo: 4,
            optionResults: {
              health: +30,
              money: -40
            },
            optionWarn: {
              warnName: "Ambulances are expensive. Do you know how much your insurance will cover if you call an ambulances? Also, emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting time.",
              choosedFeedback: "Ambulance came and took Greg into the emergency room of a nearby hospital. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
            },
          },
          option2: {
            optionName: "Ask George to drive you to an emergency room",
            optionLinkTo: 4,
            optionResults: {
              health: +30,
              money: -25
            },
            optionWarn: {
              warnName: "You’re on your way to see a doctor! But before you go, consider this:  emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting time. Also, base on your insurance policy, you may pay more than visiting an urgent care center.",
              choosedFeedback: "Greg waited in the emergency room for one and half hours. A doctor took Greg’s x-ray and diagnosed him. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
            },
          },
          option3: {
            optionName: "Ask George to drive you to an urgent care center",
            optionLinkTo: 4,
            optionResults: {
              health: +30,
              money: -10
            },
            optionWarn: {
              warnName: "You’re on your way to see a doctor! Normally visiting an urgent care center cost less and take less waiting time. However, double check with the on-site doctor if Greg has any life-threatening conditions before you go. If he does, go the the emergency room immediately.",
              choosedFeedback: "Greg got x-rayed and diagnosed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
            },
          },
          option4: {
            optionName: "Go back to the hotel since you think the shin will gets better and you doesn’t want to pay medical bills.",
            optionLinkTo: 3,
            optionResults: {
              health: -20,
              money: +0
            },
            optionWarn: {
              warnName: "You’re risking your health! If you don’t get treatment on time, it’s possible that undiagnosed injuries pose high risks to your well-being, and potentially put you into critical conditions.",
              choosedFeedback: "Greg’s leg kept hurting him, and on the next morning, his shin became turgid."
            },
          },
          option5: {
            optionName: "Wait until you go back to boston to see a doctor, because you’re under student insurance and need referrals from the student health center to see a doctor.",
            optionLinkTo: 3,
            optionResults: {
              health: -20,
              money: +0
            },
            optionWarn: {
              warnName: "Wrong assumption! Read your school’s health care website and your insurance policy. You do not need  referrals when it’s an emergency.",
              choosedFeedback: "Greg waited till the next morning. Greg’s leg kept hurting him and his shin became turgid."
            },
          }
        }
      },
      {
        question: "As Greg, what do you want to do? ",
        descrip: "Greg realized he must find medical help for his injury.",
        imgurl: "sadsadada",
        sceneId: 3,
        options: {
          option1: {
            optionName: "Go to an emergency room",
            optionLinkTo: 4,
            optionResults: {
              health: +45,
              money: -30
            },
            optionWarn: {
              warnName: "You’re on your way to see a doctor! But before you go, consider this:  emergency rooms rank patients’ priorities by the seriousness of their conditions. Non life-threatening conditions may result in long waiting time. Also, base on your insurance policy, you may pay more than visiting an urgent care center.",
              choosedFeedback: "Greg waited in the emergency room for two hours. A doctor took Greg’s x-ray and diagnosed him. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
            },
          },
          option2: {
            optionName: "Go to an urgent care center",
            optionLinkTo: 4,
            optionResults: {
              health: +45,
              money: -15
            },
            optionWarn: {
              warnName: "You’re on your way to see a doctor! Normally visiting an urgent care center cost less and take less waiting time. But before you go, make sure you don’t have any life-threatening symptoms.",
              choosedFeedback: "Greg got x-rayed and diagnosed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
            },
          },
          option3: {
            optionName: "Go find a physician to be your new primary care provider and ask the physician to refer you to a orthopedist",
            optionLinkTo: 4,
            optionResults: {
              health: +30,
              money: -40
            },
            optionWarn: {
              warnName: "Are you sure? A primary care physician provides the first contact for a person with an undiagnosed health concern, however, in this case, getting referral from a physician and wait to see an orthopedist may take days.",
              choosedFeedback: "A day later, Greg went to a physician. However, the physician send him to the urgent care center after a brief examination. The physician’s office doesn’t have x-ray equipment. This caused Greg an extra bill. In the urgent care center, Greg got x-rayed and diagnosed by a doctor. He’s fibula has a crackle. Everything else is fine. Doctor put his shin in a cast."
            },
          },
        }
      },
      {
        question: "As Greg, How to fill out information about your insurance?",
        descrip: "After being treated, a nurse came in and gave Greg a lot of paper works to fill. The form asked for personal information as well as insurance information, such as your insurance ID number. But Greg didn’t have a copy of his insurance. Ahh so much paperwork!",
        imgurl: "sadsadada",
        sceneId: 4,
        options: {
          option1: {
            optionName: "Leave insurance information blank and decide just to pay the full bill",
            optionLinkTo: 5,
            optionResults: {
              health: +0,
              money: -10
            },
            optionWarn: {
              warnName: "Ahhh are you sure? Emergency medical care and examinations are not cheap. Plus you already paid a lot for your insurance plan. Why not save these money for a trip to Alaska?",
              choosedFeedback: "glad you choose this option1"
            },
          },
          option2: {
            optionName: "Call your school’s student health center, and ask them about this",
            optionLinkTo: 6,
            optionResults: {
              health: +0,
              money: +15
            },
            optionWarn: {
              warnName: "Student health center is a good resource when you have any question about medical issues. Give them a call when you don’t know where to find answers. But will someone pick up the phone in Christmas?",
              choosedFeedback: "glad you choose this option2"
            },
          },
          option3: {
            optionName: "Go to your insurance company’s website to find the brochure of your plan.",
            optionLinkTo: 5,
            optionResults: {
              health: +0,
              money: -10
            },
            optionWarn: {
              warnName: "Everyone in you school use the same policy documents to check their benefits. But clearly the forms is asking your personal information. Are you sure this brochure can give you the correct information?",
              choosedFeedback: "glad you choose this option3"
            },
          },
          option4: {
            optionName: "Go to your school’s student health website and find a digital copy of your insurance card.",
            optionLinkTo: 6,
            optionResults: {
              health: +0,
              money: +15
            },
            optionWarn: {
              warnName: "You’re looking at the correct place. Once you log in with our student id (or other forms of credentials), you’ll be able to see a digital copy of your insurance card. Do you know what’s GRP and which number is your insurance ID? ",
              choosedFeedback: "glad you choose this option4"
            },
          }
        }
      },

    ]

    this.currentScene = this.scenarioData[0];
    this.currentOption = undefined;

    option(e) {
      var nextSceneId = e.currentTarget.id;
      this.currentOption = e.item.i;
      this.feedback = undefined;
    }

  </script>

  <style>
    .scene-wrap {
      width: 60%;
      min-width: 270px;
      height: 500px;
      /* background: #fff; */
      margin: 40px auto;
    }
    .scene-wrap .button-wrap {
      width: 300px;
      display: flex;
      text-align: center;
      margin: 30px auto;
      justify-content: space-around;
      flex-wrap: wrap;
    }
    .scene-wrap .button-wrap > * {
      width: 50%;
    }


  </style>
</scene>
