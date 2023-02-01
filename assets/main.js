import * as params from "@params";

let originalTitle = document.title;

window.addEventListener("beforeprint", () => {
	originalTitle = document.title;
	document.title = params.printTitle;
});

window.addEventListener("afterprint", () => {
	document.title = originalTitle;
});
