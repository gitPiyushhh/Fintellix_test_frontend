$(document).ready(function() {

	$("#newgrid").kendoGrid({
		dataSource:{
			data:{
			}
			
		},
		sortable: false,
		filterable: {
			extra: false,
			operators: {
				string: {
					startswith: "Starts with",
					eq: "Is equal to",
					neq: "Is not equal to"
				}
			}

		},
		scrollable: true,
		noRecords: true,
		pageable: {
			refresh: false,
			pageSizes: true,
			buttonCount: 5
		},

		columns: [

			{
				field: "serailNo",
				title: "SL.NO",
			},
			{
				field: "question",
				title: "Questions",
			},
			{
				field: "action",
				title: "Actions",
			}	

		]
	});
});

function openAddQuestionsSection(){
	$("#questionSection").show();
	
}

function validateThedata(){
	var categoryType = $("#categoryType").val();
	var difficultyLevel = $("#difficultyLevel").val();
	var questionType = $("#questionType").val();
	if(categoryType != null && difficultyLevel != null && questionType != null){
		console.log("Done");
		$("#createQuestion").attr("disabled", false);
		$("#createQuestion").css("cursor", "pointer");
		$("#createQuestion").attr("onClick", "createQuestion()");
	}

}

function createQuestion(){
	$("#addQuestionPage").hide();
	$("#questionBank").show();
}