function Fic(ship) 
{
	this.ship = ship;
	this.shown = false;
	var characterArray = [];
	var liElementClass = "ship-" + this.ship;
	this.addCharacter = function(character)
	{
		characterArray[characterArray.length, character];
	};
	this.showFic = function()
	{
		if (this.shown === false)
		{
			$('<li><a href="#">Ship: ' + this.ship + '</a></li>').addClass("fic-"+this.ship).appendTo(".filtered-works");
			this.shown = true;
		}
		else
		{
			$('.fic-'+this.ship).show();
		}
	};
	this.hideFic = function()
	{
		$('.fic-'+this.ship).hide();
	};
	this.setIndex = function(index)
	{
		this.index = index;
	};
};
// var ficArray = [10];
// for (var i = 0; i < 10; i++) 
// {
// 	ficArray[i]= new Fic(""+i);
// };
function filterWorks()
{
	var shiptext = document.forms["filter"]["ship-field"].value;
	//for (var i = 0; i < ficArray.length; i++) {
		//ficArray[i]
	//};
	//alert("Ship to search for: Ship " + shiptext);
	for (var i = 0; i < ficArray.length; i++) 
	{
		if (ficArray[i].ship === shiptext) 
			{
				ficArray[i].show;
			};
	};
	return true;
};
var main = function()
{
	var ficArray = [10];
	var nextEmptyIndex = 0;
	// for (var i = 0; i < 10; i++) 
	// {
	// 	ficArray[i]= new Fic(""+i);
	// };
	// for (var i = 0; i < ficArray.length; i++) 
	// {
	// 	ficArray[i].show;
	// };
    $('.new-fic').click(function(){
    	ficArray[nextEmptyIndex] = new Fic("" + nextEmptyIndex);
    	ficArray[nextEmptyIndex].showFic();
    	nextEmptyIndex++;
    });

    // $('.go').click(function(){
    // 	var shiptext = document.forms["filter"]["ship-field"].val;
    // 	shiptext = "" + shiptext;
    // 	$('.filtered-works li').hide();
    // 	for (var i = 0; i < ficArray.length; i++) {
    // 		if (ficArray[i].ship === shiptext)
    // 		{
    // 			ficArray[i].showFic;
    // 		};
    // 	};
    // });
    $('.hide-all').click(function(){
    	$('.filtered-works li').hide();
    	// for (var i = 0; i < ficArray.length; i++) {
    	// 	ficArray[i].hideFic;
    	// };
    	$('<p>').text("Hidden").appendTo(".hiddenmsg");
    });
};
$(document).ready(main);