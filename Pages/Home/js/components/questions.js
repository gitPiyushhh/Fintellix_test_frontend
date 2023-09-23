// // 1. Outer grid
// const main = document.getElementById("main__content");
// function getGlobalTable() {
//     console.log("started")
    
//   // Hard-coded categories
//   const categoriesArray = [
//     {
//       cid: 1,
//       sectionName: "Java Easy for Freshers",
//       category_type: "Programming",
//     },

//     {
//       cid: 2,
//       sectionName: "Java Test for 2-year Ex",
//       category_type: "Java",
//     },

//     {
//       cid: 3,
//       sectionName: "SQL Test for 2-year Ex",
//       category_type: "SQL",
//     },
//   ];

//   // Define a Kendo DataSource with the hard-coded data

//   const dataSource1 = new kendo.data.DataSource({
//     data: categoriesArray,
//   });

//   // Create and append a div for the grid to the main content

//   const mainContent = $("#main");

//   mainContent.empty(); // Clear the main content

//   //const gridDiv = $("<div id='grid'></div>");
//   const gridDiv = $("<div id='grid'></div>");

//   mainContent.append(gridDiv);

//   // Initialize the Kendo Grid inside the grid div

//   gridDiv.kendoGrid({
//     dataSource: dataSource1,

//     height: 250,
//     sortable: true,
//     pageable: { pageSize: true },
//     filterable: true,

//     columns: [
//       { field: "cid", title: "cid", width: "50px" },

//       { field: "sectionName", title: "sectionName", width: "200px" },

//       { field: "category_type", title: "Category Title", width: "200px" },

//       {
//         title: "Actions",
//         template: `
//                 <button class="k-button" onclick="loadquestionsSection(#: cid#)">ViewQuestions</button>
//                       <button class="k-button" onclick="editCategory(#: cid#)">Edit</button>
//                       <button class="k-button" onclick="deleteSection(#: cid#)">Delete</button>
//       `,
//         width: "200px",
//       },
//     ],

//     footer: "Total: #= kendo.toString(sum, 'c') #",
//   });

//   console.log("Completed")
// }

// getGlobalTable();

// // 2. Inner grid



// // 3. Popup grid

// // 4. Update the array on the checkboz checked

// // initialiseKendo();