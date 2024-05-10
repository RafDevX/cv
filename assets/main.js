import * as params from "@params";

let originalTitle = document.title;

window.addEventListener("beforeprint", () => {
    originalTitle = document.title;
    document.title = params.printTitle;
});

window.addEventListener("afterprint", () => {
    document.title = originalTitle;
});

for (const el of document.getElementsByTagName("a")) {
    const href = el.getAttribute("href");
    if (!href?.startsWith("http")) continue;

    const url = new URL(href);

    if (url.origin !== window.location.origin) {
        el.setAttribute("target", "_blank");
        el.setAttribute("rel", "noreferrer");
    }
}
