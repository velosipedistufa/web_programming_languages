document.write("Hello, JS!");
function output_html(branch)//recursive function
{
	temp=branch.tagName;//tagName returns tag name of the element. EXMLP <p>"demo"</p> tag name of "demo" is p
	//console.log('the programm entered into ' + branch.tagName); //
	if (branch.childElementCount>0)//equals to branch.children.length, returns the number of child elements of an element.
	{
		temp+="<ul>";//ul stands for unordered list
		for(var i=0; i<branch.children.length; i++)
			temp+="<li>"+output_html(branch.children[i])+"<\/li>";// children[i] returns a an element's child "i" element
			console.log(temp);
		temp+="<\/ul>";//quoting "/" symbol, the same as in regular expressions
	}
	//console.log('left from ' + branch.tagName);
	return temp;
}
document.getElementById("demo").innerHTML+=output_html(document.documentElement);
//document.documentElement returns the <html> element.