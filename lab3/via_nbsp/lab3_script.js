document.write("Hello, JS!");
function output_html(branch)//recursive function
{
	temp="&nbsp;"+branch.tagName+"</br>";//tagName returns tag name of the element. EXMLP <p>"demo"</p> tag name of "demo" is p
	//console.log('the programm entered into ' + branch.tagName); //
	if (branch.childElementCount>0)//equals to branch.children.length, returns the number of child elements of an element.
	{
		//ul stands for unordered list
		document.write("</br>");
		temp+="&nbsp;";
		for(var i=0; i<branch.children.length; i++)
			temp+="&nbsp;"+output_html(branch.children[i]);// children[i] returns a an element's child "i" element
			console.log(temp);
		//quoting "/" symbol, the same as in regular expressions
	}
	//console.log('left from ' + branch.tagName);
	return temp;
}
document.getElementById("demo").innerHTML+=output_html(document.documentElement);
//document.documentElement returns the <html> element.