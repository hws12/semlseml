

// var employees = new Vue({
//   el: '#employees',
//   data: {
//     employees: []
//   },
//   ready: function() {
//     var that;
//     that = this;
//     $.ajax({
//       url: '/users.json',
//       success: function(res) {
//         that.employees = res;
//       }
//     });
//   }
// });



// $(document).ready(function() {
//    // vue
//   var TicWatch = new Vue ({
//     el: '#students',
//     data: {
//       students: {}
//     },
//     created: function() {
//       this.fetchData()
//     },
//     methods: {
//       fetchData: function () {
//         var self = this;
//         $.ajax({
//           url: '/users.json',
//           method: 'GET',
//           dataType: 'json',
//           beforeSend: function() {
//           },
//           success: function(data, textStatus, jqXHR) {
//             self.students = data;
//           },
//           error: function(jqXHR, textStatus, errorThrown) {
//           }
//         })
//       }
//     }
//   })
//
//
// }); // document ready end
