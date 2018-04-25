
<panel-product>
  <section class="wrap-product wrap-anime">
    <div class="pre-survey" if={!surveyStart}>
      <h1>Help Us Improve CareGuru!</h1>
      <p>Hey there! We are always working on make your experience better.</p>
      <p>This survey focuses on how you utilize the U.S. health care benefits and what you think of our site and
how you think we could improve it.</p>
      <p>Your feedback will support our team to improve the services and user experience.</p>

      <button onclick={startSurvey}>Let's do it!</button>
    </div>
    <survey if={surveyStart}></survey>
    <button onclick={submit}>Submit it! </button>
  </section>

  <script>
    this.surveyStart = false;
    startSurvey() {
      this.surveyStart = true;
    }
  </script>

  <style>
    .wrap-product {
      text-align: center;
    }
  </style>
</panel-product>
