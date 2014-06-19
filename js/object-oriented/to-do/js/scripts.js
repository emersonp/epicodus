var ToDoList = {

};

var Task = {
	toggleCompleted: function() {
		if (this.completed) {
			this.completed = false;
		} else {
			this.completed = true;
		}
	}
};

$(document).ready(function() {
	$("#add-list").click(function() {
		event.preventDefault();

		var inputtedListName = $("input#new-list").val();
		var newList = Object.create(ToDoList);
		newList.name = inputtedListName;
		newList.tasks = [];

		$("ul#all-lists").append("<li><span class='list'>" + newList.name + "</span></li>");

		$(".list").last().click(function() {
			$("#list-title").text(newList.name);
			$("ul#all-tasks").text("");
			newList.tasks.forEach(function(task) {
				if (!task.completed) {
					$("ul#all-tasks").append("<li><span class='task'>" + task.name + "</span></li>");
				}
			});
			newList.tasks.forEach(function(task) {
				if (task.completed) {
					$("ul#all-tasks").append("<li><span class='completed'>" + task.name + "</span></li>");
				}
			});

			$(".task").click(function() {
				$(this).toggleClass("completed");
				newTask.toggleCompleted();
			});
		});

		$("#add-task").click(function() {
			event.preventDefault();

			var inputtedTask = $("input#new-task").val();
			var newTask = Object.create(Task);
			newTask.name = inputtedTask;
			newTask.completed = false;
			newList.tasks.push(newTask);
			
			$("ul#all-tasks").text("");
			newList.tasks.forEach(function(task) {
				if (!task.completed) {
					$("ul#all-tasks").append("<li><span class='task'>" + task.name + "</span></li>");
				}
			});
			newList.tasks.forEach(function(task) {
				if (task.completed) {
					$("ul#all-tasks").append("<li><span class='completed'>" + task.name + "</span></li>");
				}
			});

			$(".task").click(function() {
				debugger;
				$(this).toggleClass("completed");
				newTask.toggleCompleted();
			});
		});
	});

	
});