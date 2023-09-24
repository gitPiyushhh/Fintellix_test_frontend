<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Fintellix Test | Home</title>

    <script type="text/javascript" src="../lib/jquery.min.js"></script>
    <script type="text/javascript" src="../js/user-exam.js"></script>
    <link rel="stylesheet" href="../style/css/navbar.css" />
    <link rel="stylesheet" href="../style/css/main.css" />
    <link rel="stylesheet" href="../style/css/user-exam.css" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700&family=Open+Sans:ital,wght@0,300;0,400;0,500;1,300;1,600&display=swap"
      rel="stylesheet"
    />
	<script>var examDetails = '<c:out value="${model.examDetails}" />';</script>
  </head>
  <body>
    <div class="user-exam-content">
      <nav class="user-exam-navbar">
        <div class="user-exam-brand">
          <a class="brand-logo" href="./index.html" style="cursor: pointer">
            <img
              src="../img/FIntellix Logo.svg"
              alt="Website logo"
            />
          </a>
          <p>Girish Radhod</p>
        </div>
        <div class="user-exam-time-section">
          <!-- <h4>Time Left</h4> -->
          <!-- <p class="time-text">0:56</p> -->
          <button class="user-exam-sec-btn" type="button">Go to profile</button>
          <button class="btn-link">
            <img src="../img/logout.svg" alt="Logout icon" /><span
              >Logout</span
            >
          </button>
        </div>
      </nav>
      <div
        class="user-exam-wrapper"
        id="user-exam-section-id"
        style="display: none"
      >
        <div
          id="user-exam-question-section"
          class="user-exam-question-section"
        ></div>
        <div class="answer-status">
          <div class="answer-status-title">
            <h4>Time Left</h4>
          </div>
          <div class="answer-left-time">
            <div>
              <h5 id="hours">00</h5>
              <p>Hours</p>
            </div>
            <div>
              <h5 id="minutes">00</h5>
              <p>Minutes</p>
            </div>
            <div>
              <h5 id="seconds">00</h5>
              <p>Seconds</p>
            </div>
          </div>
          <div class="answer-status-title">
            <h4 id="exam-type-title">Java</h4>
          </div>
          <ul id="question-status-id">
            <li class="complete">1</li>
            <li class="wip">2</li>
            <li class="in-complete">3</li>
            <li class="in-complete">3</li>
          </ul>
        </div>
      </div>
      <div id="section-types-id" class="cards-container u-flex"></div>
    </div>
    <div
      class="instruction-modal"
      id="start-test-modal"
      style="display: none"
    >
      <div class="instruction-modal-content">
        <div class="instruction-modal-head">
          <h2 id="submit-test-modal-title">Start your test</h2>
        </div>
        <div class="instruction-modal-body">
          
        </div>
        <div class="instruction-modal-footer">
          <button
            class="user-exam-sec-btn"
            type="button"
            onclick="hideStartTestModal()"
          >
            Cancel
          </button>
          <div id="start-test-modal-btn"></div>
        </div>
      </div>
    </div>
    <div class="instruction-modal" id="instruction-modal" style="display: flex">
      <div class="instruction-modal-content">
        <div class="instruction-modal-head"><h2>Test Instruction</h2></div>
        <div class="instruction-modal-body">
          <p>
            Welcome to the test platform. Follow these instructions to take the
            test:
          </p>
          <ul class="terms-list">
            <li>
              Select a category from the menu to start a test for that category.
            </li>
            <li>Answer the questions presented to you.</li>
            <li>
              Use the "Next" and "Previous" buttons to navigate between
              questions within the test.
            </li>
            <li>
              Click "Submit" to finish the test for the selected category.
            </li>
          </ul>
        </div>
        <div class="instruction-modal-footer">
          <p>
            Repeat these steps for each category you want to test. Good luck!
          </p>
          <button class="user-exam-sec-btn" onclick="hideInstructionModal()">
            Ok
          </button>
        </div>
      </div>
    </div>
    <div
      class="instruction-modal"
      id="complete-test-modal"
      style="display: none"
    >
      <div class="instruction-modal-content">
        <div class="instruction-modal-head">
          <h2 id="submit-test-modal-title">Confirmation</h2>
        </div>
        <div class="instruction-modal-body">
          <p style="margin-bottom: 12px;">
            Are you sure to finish this test? You will be no longer to access this section.
          </p>
          <ul class="test-question-status" id="test-question-status"></ul>
        </div>
        <div class="instruction-modal-footer">
          <button
            class="user-exam-sec-btn"
            type="button"
            onclick="hideCompleteModal()"
          >
            Cancel
          </button>
          <button
            class="user-exam-sec-btn"
            type="button"
            onclick="nextTest()"
          >
            Next Test
          </button>
        </div>
      </div>
    </div>
    <div
      class="instruction-modal"
      id="submit-exam-modal"
      style="display: none"
    >
      <div class="instruction-modal-content">
        <div class="instruction-modal-head">
          <h2 id="submit-test-modal-title">Submit Your Exam</h2>
        </div>
        <div class="instruction-modal-body">
          <p>
            Are you sure to submit your exam? Make sure that you will be no longer to access this exam.
          </p>
        </div>
        <div class="instruction-modal-footer">
          <button
            class="user-exam-sec-btn"
            type="button"
            onclick="hideSubmitExamModal()"
          >
            Cancel
          </button>
          <button
            class="user-exam-sec-btn"
            type="button"
            onclick="submitExam()"
          >
            Submit Exam
          </button>
        </div>
      </div>
    </div>
  </body>
</html>
