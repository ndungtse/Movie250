<template>
     <div class="footer foot1">
        <div class="footer__links">
            <div class="footer__link--view">
                <div class="footer__link--items">
                    <h2>About Us</h2>
                    <a href="/">How it works</a>
                    <a href="/">Testimonials</a>
                    <a href="/">Careers</a>
                    <a href="/">Terms of services</a>
                </div>
                <div class="footer__link--items">
                    <h2>Contact Us</h2>
                    <a href="/">Contact</a>
                    <a href="/">Support</a>
                    <a href="/">Destinations</a>
                    <a href="/">Order Now</a>
                </div>
            </div>
            <div class="footer__link--view">
                <div class="footer__link--items">
                    <h2>Videos</h2>
                    <a href="/">Submit Video</a>
                    <a href="/">Ambassadors</a>
                    <a href="/">Agency</a>
                    <a href="/">Product Videos</a>
                </div>
                <div class="footer__link--items">
                    <h2>Social Media</h2>
                    <a href="/">Instagram</a>
                    <a href="/">Facebook</a>
                    <a href="/">Youtube</a>
                    <a href="/">Twitter</a>
                </div>
            </div>
        </div>
        <div class="social__media">
            <div class="social__media--view">
                <p class="website__rights">&copy;
                    Watch250 2022. All rights reserved</p>
                <div class="social__icons">
                    <a href="/" class="social__icon--link" target="_blank">
                        <i class="fas fa-facebook"></i>
                    </a>
                    <a href="/" class="social__icon--link">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="/" class="social__icon--link">
                        <i class="fab fa-youtube"></i>
                    </a>
                    <a href="/" class="social__icon--link">
                        <i class="fab fa-linkedin"></i>
                    </a>
                    <a href="/" class="social__icon--link">
                        <i class="fab fa-twitter"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: 'MyFooter'
}
</script>

<style>

  .footer {
      clip-path: ellipse(87% 100% at 52.59% 100%);
      box-sizing: border-box;
      height: 100%;
      background-image: linear-gradient(to top, #1a1a1a 0%, #5928e0 100%);
      padding: 5rem 0;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      transform: translateY(150px);
  }

  .footer__links {
      width: 100%;
      max-width: 1000px;
      display: flex;
      justify-content: center;
  }

  .footer__link--view {
      display: flex;
      flex-direction: row;
  }

  .footer__link--items {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      margin: 16px;
      text-align: left;
      width: 160px;
      box-sizing: border-box;
  }

  .footer__link--items h2 {
      margin-bottom: 16px;
      color: rgb(209, 205, 205);
  }

  .footer__link--items a {
      color: rgb(209, 205, 205);
      text-decoration: none;
      margin-bottom: 0.5rem;
      transition: 0.3 ease-out;
  }

  .footer__link--items a:hover {
      color: #9b9cb9ab;
      text-decoration: underline;
      transition: 0.3 ease-out;
  }

  .social__icon--link {
      color: rgb(209, 205, 205);
      font-size: 24px;
  }

  .social__media {
      max-width: 1000px;
      width: 100%;
  }

  .social__media--wrap {
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 90%;
      max-width: 1000px;
      margin: 40px auto 0 auto;
  }

  .social__icons {
      display: flex;
      justify-content: space-between;
      align-items: center;
      width: 240px;
  }

  .website__rights {
      color: rgb(209, 205, 205);
      margin-top: 16px;
  }

  #footer__logo {
      display: flex;
      align-items: center;
      cursor: pointer;
  }

  #footer__logo img {
      margin-left: -80%;
      width: 80px;
      display: flex;
      align-items: center;
      cursor: pointer;
  }

  .social__media--view {
      display: flex;
      align-items: center;
      justify-content: center;
  }

  @media screen and (max-width: 820px) {
      .footer__links {
          padding-top: 2rem;
      }

      #footer__logo {
          margin-bottom: 2rem;
      }

      .website__rights {
          margin-bottom: 2rem;
      }

      .footer__link--view {
          flex-direction: column;
      }

      .social__media--view {
          align-items: center;
          flex-direction: column;
      }
  }

  @media screen and (max-width: 480px) {
      .footer {
          clip-path: ellipse(153% 100% at 36.61% 100%);
          transform: translateY(20px);
      }

      .slideshow__container img {
          width: 320px;
          height: 200px;
          margin-left: 20%;
      }

      .footer__link--items {
          margin: 0;
          padding: 10px;
          width: 100%;
      }

      #footer__logo {
          display: flex;
          flex-direction: column;
          align-items: center;
          justify-content: center;
      }
  }


  @media screen and (max-width: 1180px) {
      .social__media {
          align-items: center;
          justify-content: center;
          margin-left: 20%;
      }
  }

  @media screen and (max-width: 820px) {
      .footer {
          clip-path: ellipse(126% 100% at 40.12% 100%);
          transform: translateY(80px)
      }

      .social__media {
          align-items: center;
          justify-content: center;
          margin-left: 0%;
      }
  }

  @media screen and (max-width: 400px) {
      .footer {
          clip-path: ellipse(173% 100% at 46.61% 100%);
          transform: translateY(90px);
      }

      .foot1 {
          transform: translateY(370px);
      }
  }

  @media screen and (max-width: 330px) {
      .footer {
          clip-path: ellipse(173% 100% at 46.61% 100%);
      }
  }

</style>