/**
 * 
 */
function loginbar() {
	const form = document.querySelector("form");
	form.style.display = "block";

}

function showMyPage() {
	const art1 = document.querySelector(".art1");
	const art2 = document.querySelector(".art2");
	const art3 = document.querySelector(".art3");

	art1.style.display = "none";
	art2.style.display = "none";
	art3.style.display = "block";
}