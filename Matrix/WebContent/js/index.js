var charsArray = [ 'ч', 'а', 'щ', 'а', 'х', 'ю', 'г', 'а', 'ж', 'и', 'л', 'б',
		'ы', 'ц', 'и', 'т', 'р', 'у', 'с', 'Д', 'а', 'н', 'о', 'ф', 'а', 'л',
		'ь', 'ш', 'и', 'в', 'ы', 'й', 'э', 'к', 'з', 'е', 'м', 'п', 'л', 'я',
		'р' ];

var randStringArray = [];
var randString;
var charLimit;
for (var i = 0; i < 100; i++) {
	charLimit = Math.floor(Math.random() * 55) + 1;
	for (var j = 0; j < charLimit; j++) {
		randString += charsArray[Math.floor(Math.random() * 15) + 1];
	}

	randStringArray.push(randString);
	randString = "";

}

for (var l = 0; l < 250; l++) {
	var el = $('<p class="digital-rain">'
			+ randStringArray[Math
					.floor(Math.random() * randStringArray.length)] + '</p>');
	var className = "speed" + (Math.floor(Math.random() * 5) + 1);
	el.addClass(className);
	el.css("margin-top", "-" + Math.floor(Math.random() * 30) + "px");

	$(".rain" + (Math.floor(Math.random() * 4) + 1)).append(el);
}