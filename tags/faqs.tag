
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
  this.data = [
         { category: "General health questions",
           question: "What is Considered an Emergency?",
           answer: "In general, an emergency condition is one that can permanently impair or endanger your life. Dial 911 immediately for any medical problem that appears life-threatening. Some examples of conditions that need emergency medical care include: Compound fracture, which involves a bone protruding through the skin 2. Convulsions, seizures, or loss consciousness; Deep knife wounds or gunshot wounds; Fever in a newborn less than 3 months old; Heavy, uncontrollable bleeding; Moderate to severe burns; Poisoning; Pregnancy-related problems; Serious head, neck, or back injury;Severe abdominal pain; Severe chest pain or difficulty breathing; Heart attack symptoms, such as chest pain that lasts longer than two minutes; Stroke symptoms, such as vision loss, sudden numbness, weakness, slurred speech, or confusion; Suicidal or homicidal feelings",
      },
         { category: "General health questions",
           question: "What is Considered an Urgent Medical Condition?",
           answer: "Accidents and falls; Cuts that don’t involve much blood but might need stitches; Breathing difficulties, such as mild to moderate asthma; Diagnostic services, including X-rays and laboratory tests; Eye irritation and redness; Fever or flu; Minor broken bones and fractures in fingers or toes; Moderate back problems; Severe sore throat or cough; Skin rashes and infections; Sprains and strains; Urinary tract infections; Vomiting, diarrhea, or dehydration",
         },
         { category: "Questions about our webpage",
           question: "Can I find all the information about my insurance card from your website?",
           answer:"You can find more general question of "
           question: ""
         }
       ]

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
