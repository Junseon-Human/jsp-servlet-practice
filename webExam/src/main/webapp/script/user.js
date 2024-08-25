/**
 * 
 */
function showMyPage() {
	const art1 = document.querySelector(".art1");
	const art2 = document.querySelector(".art2");
	const art3 = document.querySelector(".art3");

		art1.style.display = "none";
		art2.style.display = "none";
		art3.style.display = "block";

}

function showAddStaff() {
	const lev = document.getElementById("lev").textContent;
	const art1 = document.querySelector(".art1");
	const art2 = document.querySelector(".art2");
	const art3 = document.querySelector(".art3");
	
	if (lev == 'A') {
			art1.style.display = "none";
			art2.style.display = "block";
			art3.style.display = "none";

		}
	
}
