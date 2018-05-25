import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Learn to make cocktails", "And get drunk"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
