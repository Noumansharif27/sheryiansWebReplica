<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset='UTF-8' />
  <meta name="description" content="Learn how to build modern websites with animations, explore awwwards-winning or award-winning websites, and courses on website creation. Master web technologies like Node.js, MongoDB, Socket.io, and databases such as DBMS. Dive into programming with Java, C, Python, and explore data analysis, blockchain, CPT, aptitude, HTML, CSS, and JavaScript for a comprehensive learning experience in modern web technologies.">
  <meta name="keywords" content="modern web technologies, animations, award-winning websites, Node.js, MongoDB, Socket.io, DBMS, Java, C, Python, data analysis, blockchain, CPT, aptitude, HTML, CSS, JavaScript">
  <meta name="robots" content="index, follow">
  <link rel="canonical" href="https://www.sheryians.com">

  <meta http-equiv='X-UA-Compatible' content='IE=edge' />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

  <title>
    Sheryians Coding School | Learn Coding in India
  </title>
  <link rel="apple-touch-icon" sizes="57x57" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="apple-touch-icon" sizes="60x60" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="apple-touch-icon" sizes="72x72" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="apple-touch-icon" sizes="76x76" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="apple-touch-icon" sizes="114x114" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="apple-touch-icon" sizes="120x120" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="apple-touch-icon" sizes="144x144" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="apple-touch-icon" sizes="152x152" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="apple-touch-icon" sizes="180x180" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="icon" type="image/png" sizes="192x192" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="icon" type="image/png" sizes="32x32" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="icon" type="image/png" sizes="96x96" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link rel="icon" type="image/png" sizes="16x16" href="https://ik.imagekit.io/sheryians/Sheryians_Logo_wFKd9VClG.png">
  <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  <link rel="stylesheet" href="/css/common.css">

  <script defer>
    function hidePreLoader() {
      document.querySelector('#preLoder').style.opacity = '0'
      setTimeout(() => {
        document.querySelector('#preLoder').style.display = 'none'
      }, 500);
    }

    function observeAndCallback(element, callback, options) {
      const observer = new IntersectionObserver((entries, observer) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            callback(entry.target); // Run the callback when the element is intersecting
            observer.disconnect(); // Disconnect the observer after the callback is executed
          }
        });
      }, options);

      observer.observe(element);
    }

    function applyLazyLoading() {
      document.querySelectorAll('[load-lazy]').forEach(lazyLoadingElement => {

        function callbackFunction() {
          const src = lazyLoadingElement.getAttribute('load-lazy')
          lazyLoadingElement.removeAttribute('load-lazy')
          lazyLoadingElement.setAttribute('src', src)
        }

        observeAndCallback(lazyLoadingElement, callbackFunction, {
          threshold: 0.5
        });
      })
    }

    window.addEventListener('DOMContentLoaded', (event) => {

      applyLazyLoading()
    })
  </script>

<link rel="stylesheet" href="/css/index.css">
<title>Sheryians Coding School | Learn Coding in India</title>

</head>

<body>

  <main>
    <section id="view1" class="view">
      <div class="top"></div>
      <div class="middle">
        <h1>
          <span>
            We only <span class="text-highlight">
              teach
            </span> <br>
            what we are really <br>
            really <span class="italic">good</span> at. <br>
          </span>
        </h1>
        <a href="/courses" class="btn btn-primary checkout shadow-bottom shadow-primary">
          Check Courses-Make an Impact
        </a>

        <div class="side-text">
          Get ready to <span class="text-highlight">accelerate your career </span> with customized courses and leave your mark in the tech industry
        </div>

      </div>
      <div class="bottom">
        <div class="mileStones">
          <div class="mileStone">

            <div class="text">
              <h2>24k+</h2>
              <p>Students taught</p>
            </div>
          </div>

          <div class="mileStone">

            <div class="text">
              <h2>9+</h2>
              <p>Instructors</p>
            </div>
          </div>
          <div class="mileStone">
            <div class="text">
              <h2>320k+</h2>
              <p>Youtube Subs.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="view" id="view2">
      <div class="top">
        <span>
          we do whatever it takes to help you
          <br>
          <span class="text-highlight">understand the concepts.</span>
        </span>
      </div>
      <div class="middle">
        <div class="video-container">
          <iframe data-lazy-src="https://www.youtube.com/embed/60SRAWmMXyc" frameborder="0"></iframe>
        </div>
      </div>
      <div class="bottom">
        <a href="https://www.youtube.com/@thesheryianscodingschool" target="_blank" class="btn btn-primary shadow-bottom shadow-primary">
          Explore free learning
        </a>
      </div>
    </section>

    <section class="view" id="view3">
      <div class="top">
        <h1>
          <span>Courses Offered.</span>
        </h1>
      </div>
      <div class="bottom">
        <div class="courses">

          
          <div class="course-wrapper  ">
            <a  href="/courses/courses-details/Front-End Domination: Create Anything with Code" class="course">
              <div class="course-image">

                <div class="sub-tags">

                  
                  <div class="sub-tag">
                    INDEPTH
                  </div>
                  
                </div>


                <img data-lazy-src="https://ik.imagekit.io/sheryians/courses_gif/Front-End_Domination__Create_Anything_with_Code-FRONTENDTHUBNAIL_Wf8WqcNJx.jpg" alt="">
              </div>

              <div class="course-body">
                <h2>Front-End Domination: Create Anything with Code</h2>
                <p>Domin8 the web game with &#39;Front-End Domination.&#39;! Nail HTML, CSS, JS, and Solve real problems, dive into fun projects, and be interview-ready! 🚀 💻</p>
              </div>

              <div class="course-body-tags">
                <div class="devider"></div>
                <div class="tags">
                  
                  <span class="tag">Web Development</span>
                  
                  <span class="tag">Animations</span>
                  
                  <span class="tag">Designing</span>
                  
                </div>
              </div>

              <div class="course-instructor">
                <p>
                  By <span>
                    Harsh &amp; Sarthak
                  </span>
                </p>

                
                <span>₹ 4999</span>
                

              </div>
            </a>

            
            <a href="/paymentPortal/6536a79daa4702e3ac0b465e" class="buy-now btn btn-primary">Buy Now</a>
            


          </div>
          
          <div class="course-wrapper  ">
            <a  href="/courses/courses-details/Back-End Domination: Create Efficient Back-End." class="course">
              <div class="course-image">

                <div class="sub-tags">

                  
                  <div class="sub-tag">
                    INDEPTH
                  </div>
                  
                </div>


                <img data-lazy-src="https://ik.imagekit.io/sheryians/courses_gif/undefined-backend_0.5x_Medium_wgHDU-5rPt.png" alt="">
              </div>

              <div class="course-body">
                <h2>Back-End Domination: Create Efficient Back-End.</h2>
                <p>Ready to rule the digital world? Learn to build powerful back-ends that drive websites and apps smoothly. From databases to security, we cover it all.</p>
              </div>

              <div class="course-body-tags">
                <div class="devider"></div>
                <div class="tags">
                  
                  <span class="tag">Web Development</span>
                  
                  <span class="tag">Logic Building</span>
                  
                </div>
              </div>

              <div class="course-instructor">
                <p>
                  By <span>
                    Harsh Sharma
                  </span>
                </p>

                
                <span>₹ 5999</span>
                

              </div>
            </a>

            
            <a href="/paymentPortal/6611d1eff067fde32227f4a7" class="buy-now btn btn-primary">Buy Now</a>
            


          </div>
          
          <div class="course-wrapper  ">
            <a  href="/courses/courses-details/Aptitude &amp; Reasoning for Campus Placements" class="course">
              <div class="course-image">

                <div class="sub-tags">

                  
                  <div class="sub-tag">
                    PLACEMENT
                  </div>
                  
                </div>


                <img data-lazy-src="https://ik.imagekit.io/sheryians/courses_gif/undefined-apti_reasoning_45vyAnZ4y.jpeg" alt="">
              </div>

              <div class="course-body">
                <h2>Aptitude &amp; Reasoning for Campus Placements</h2>
                <p>Ace your campus placements! Master aptitude and reasoning with our expert-led course, packed with interactive lessons and practice tests.</p>
              </div>

              <div class="course-body-tags">
                <div class="devider"></div>
                <div class="tags">
                  
                  <span class="tag">Logic Building</span>
                  
                  <span class="tag">Aptitude</span>
                  
                  <span class="tag">Reasoning</span>
                  
                </div>
              </div>

              <div class="course-instructor">
                <p>
                  By <span>
                    Akarsh Vyas
                  </span>
                </p>

                
                <span>₹ 899</span>
                

              </div>
            </a>

            
            <a href="/paymentPortal/6686990a672568d40bfbac7b" class="buy-now btn btn-primary">Buy Now</a>
            


          </div>
          

        </div>
      </div>
    </section>

    <section class="view" id="view4">
      <div class="top">
        <h1>
          <span>
            Top <span class="text-highlight">companies</span> our students working with
          </span>
        </h1>
      </div>
      <div class="middle">
        <div class="companies">
          <div class="upper">
            <div class="companie">
              <picture>
                <img loading="lazy" src="https://ik.imagekit.io/sheryians/companies-logo/dark-theme/netlinklogo_A5k0VjsZL.webp?updatedAt=1713975960145" alt="">
              </picture>
            </div>
            <div class="companie">
              <picture>
                <source srcset="https://ik.imagekit.io/sheryians/companies-logo/light-theme/mindtree%20logo%20l_D9kycW1Lf.webp?updatedAt=1713976099020" media="(prefers-color-scheme: light)">
                <img loading="lazy" src="https://ik.imagekit.io/sheryians/companies-logo/dark-theme/mindtree%20logo_sj0PIBh91l.webp?updatedAt=1713975960351" alt="">
              </picture>
            </div>
            <div class="companie">
              <picture>
                <img loading="lazy" src="https://ik.imagekit.io/sheryians/companies-logo/dark-theme/wallmartlogo_vR8JHQ_h20.webp?updatedAt=1713975960123" alt="">
              </picture>
            </div>
          </div>

          <div class="lower">
            <div class="companie">

              <picture>
                <source srcset="https://ik.imagekit.io/sheryians/companies-logo/light-theme/rapidops%20logo%20l_Au3qVj7UW.webp?updatedAt=1713976098881" media="(prefers-color-scheme: light)">
                <img loading="lazy" src="https://ik.imagekit.io/sheryians/companies-logo/dark-theme/rapidops%20logo_ki9BX1CCNf.webp?updatedAt=1713975960174" alt="">
              </picture>
            </div>
            <div class="companie">

              <picture>
                <img loading="lazy" src="https://ik.imagekit.io/sheryians/companies-logo/dark-theme/tcs%20logo_PglyFlXHbC.webp?updatedAt=1713975960122" alt="">
              </picture>
            </div>
            <div class="companie">

              <picture>
                <source srcset="https://ik.imagekit.io/sheryians/companies-logo/light-theme/amazon%20logo%20l_zOJdrCYq8.webp?updatedAt=1713976098920" media="(prefers-color-scheme: light)">
                <img loading="lazy" src="https://ik.imagekit.io/sheryians/companies-logo/dark-theme/amazon%20logo_WQtU99KWC.webp?updatedAt=1713975960172" alt="">
              </picture>
            </div>
            <div class="companie">

              <picture>
                <source srcset="https://ik.imagekit.io/sheryians/companies-logo/light-theme/wipro%20logo%20L_4L2tj-tpda.webp?updatedAt=1713976098940" media="(prefers-color-scheme: light)">
                <img loading="lazy" src="https://ik.imagekit.io/sheryians/companies-logo/dark-theme/wipro%20logo_ezOSPx52r8.webp?updatedAt=1713975960224" alt="">
              </picture>
            </div>
            <div class="companie">
              <picture>
                <img loading="lazy" src="https://ik.imagekit.io/sheryians/companies-logo/dark-theme/gfg%20logo_gixPTWASN.webp?updatedAt=1713975960103" alt="">
              </picture>
            </div>
          </div>
        </div>
      </div>
      <div class="bottom">
        <a href="/courses" class="btn btn-primary btn-explore">
          Explore Courses
        </a>
      </div>
    </section>
    <!-- <section class="view" id="view5">

      <div class="top">
        <h1 class="mobile-view">
          FAQs
        </h1>
        <h1> Frequently <br> Asked <br> Question </h1>

        <p>
          <span>or drop email at</span>
          <br>
          <a href="mailto:hello@sheryians.com" class="text-highlight">
            hello@sheryians.com
          </a>
        </p>

      </div>
      <div class="bottom">
        <div class="accordian">
          <label for="accordian_1">
            <input type="checkbox" id="accordian_1" hidden>
            <div class="left">
              <span>
                Lorem Ipsum is simply dummy text of the printing ?
              </span>
            </div>
            <div class="right">
              <i class="ri-arrow-down-s-line"></i>
            </div>
          </label>
          <div class="content">
            <div class="accordian-content">
              <p>
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown
                printer took a galley of type and scrambled it to make a type specimen book.
            </div>
            </p>
          </div>

        </div>

        <hr>
        <div class="accordian">
          <label for="accordian_2">
            <input type="checkbox" id="accordian_2" hidden>
            <div class="left">
              <span>
                Lorem Ipsum is simply dummy text of the printing ?
                Lorem Ipsum is simply dummy text of the printing ?
              </span>
            </div>
            <div class="right">
              <i class="ri-arrow-down-s-line"></i>
            </div>
          </label>
          <div class="content">
            <div class="accordian-content">
              <p>
                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown
                printer took a galley of type and scrambled it to make a type specimen book.
            </div>
            </p>
          </div>

        </div>

        <hr>

      </div>

    </section> -->




    <section id="footer">
  <div class="top">
    <div class="footer-section">
      <img class="logo" src="https://ik.imagekit.io/sheryians/Sheryians_logo_EzwgcppnD?updatedAt=1701272916848" alt="">
      <p>Let’s connect with our socials</p>
      <div class="socials">
        <a target="_blank" href="https://www.instagram.com/sheryians_coding_school"><i class="ri-instagram-fill"></i></a>
        <a target="_blank" href="https://in.linkedin.com/company/the-sheryians-coding-school"><i
          class="ri-linkedin-box-fill"></i></a>
        <a target="_blank" href="https://discord.gg/D23JkFqrgz"><i class="ri-discord-fill"> </i></a>
        <a target="_blank" href="https://www.youtube.com/@thesheryianscodingschool"><i class="ri-youtube-fill"></i></a>
        <a target="_blank" href="https://twitter.com/sheryians_"><i class="ri-twitter-fill"></i></a>
      </div>
    </div>
    <!-- <div class="footer-section">
      <h1>
        OUR COURSES
      </h1>
      <div class="options">
        <p>Popular Courses</p>
        <p>Web Development</p>
        <p>Data Science</p>
        <p>Interview Preparation</p>
        <p>Programming Languages</p>
        <p>Events</p>
        <p>FAQs</p>
      </div>
    </div> -->
    <div class="footer-section">
      <h1>
        COMPANY
      </h1>
      <div class="options">
        <a target="_blank" href="/aboutUs">About Us</a>
        <a href="/cdn-cgi/l/email-protection#771f121b1b1837041f12050e1e1619045914181a">Support</a>
        <a target="_blank" href="/terms-and-conditions/Terms_and_Conditions.pdf">Privacy Policy</a>
        <a target="_blank" href="/terms-and-conditions/Terms_and_Conditions.pdf">Terms and Condition</a>
        <a target="_blank" href="/Pricing&Refund-Policy/Pricing-and-Refund_policy.pdf">Pricing and Refund</a>
        <a target="_blank" href="/hire">Hire From Us</a>
        <a target="_blank" href="https://ik.imagekit.io/sheryians/Bug_8EBE0pzVa.pdf">Bug Bounty</a>
      </div>
    </div>
    <div class="footer-section">
      <h1>COMMUNITY</h1>
      <div class="options">
        <a target="_blank" href="https://www.instagram.com/inertiabysheryians">Inertia</a>
        <a target="_blank" href="https://discord.gg/D23JkFqrgz">Discord</a>
      </div>
    </div>
    <div class="footer-section">
      <h1>Get In Touch</h1>

      <div class="options">
        <a href="tel:+918109161752">+91 8109161752,</a>
        <a href="tel:+919691778470">+91 9691778470</a>
        <a href="/cdn-cgi/l/email-protection#f59d9099999ab5869d90878c9c949b86db969a98"><span class="__cf_email__" data-cfemail="f39b969f9f9cb3809b96818a9a929d80dd909c9e">[email&#160;protected]</span></a>
        <a target="_blank" href="https://www.google.com/maps/place/Sheryians+Coding+School/@23.2512609,77.4627502,17z/data=!3m1!4b1!4m6!3m5!1s0x397c43977890a98d:0x928a948dc6de732e!8m2!3d23.251256!4d77.4653251!16s%2Fg%2F11gvy2g2z8">23-B, Indrapuri Sector C,
          Bhopal(MP), 462021</a>
      </div>

    </div>
  </div>
  <div class="bottom">
    <h1 style="text-align: center;">Copyright &copy; 2024 Sheryians Pvt. Ltd. <br> All Rights Reserved.</h1>
  </div>
</section>
    </main>

<nav>
  <div class="header">

    <div style="gap: 0.624em;" class="left" onclick="window.location.href='/'">
      <img src="https://ik.imagekit.io/sheryians/Sheryians_logo_EzwgcppnD" alt="">
      <!-- <div style="height:1.8em; width:1px; background-color:white; display: inline-block; vertical-align: middle;"></div> -->
      <span style="margin-top: 0.2em;">Sheryians coding school</span>
    </div>
    <div class="right">
      <a href="/" class="nav-item">
        <span>Home</span>
      </a>
      <a href="/courses" class="nav-item">
        <span>Courses</span>
      </a>
      <a href="https://reimagine.sheryians.com" class="nav-item">
        <span>Re-Imagine</span>
      </a>

      

      <button class="nav-item  auth-user ">

        
        <a href="/signin" class="btn btn-primary sign-in">
          Sign In
        </a>
        
      </button>

      <button class="menu nav-item">
        <div class="menu-toggle">
          <div class="line line1"></div>
          <div class="line line2"></div>
        </div>

        <div class="menu-panel">
          <div class="menu-header">
            <h1>Menu</h1>
          </div>
          <div class="menu-items">
            <a href="/" class="nav-item menu-item mobile-item">Home</a>
            <a href="/courses" class="nav-item menu-item mobile-item">Courses</a>
            <a href="https://reimagine.sheryians.com" class="nav-item menu-item mobile-item">Re-Imagine</a>
            
            
            <a href="/signin" class="nav-item menu-item mobile-item">Sign In</a>

            
          </div>
        </div>

      </button>

    </div>




    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script defer>
      let lastTime = 0;
      let maxFPS = 60; // Change this value to set the maximum FPS
      let direction = 1

      const nav = document.querySelector('nav');
      let lastScrollY = window.scrollY;
      let navRect = null;

      function navPosition(timestamp) {
        if (!lastTime) {
          lastTime = timestamp;
        }
        const elapsed = timestamp - lastTime;
        if (elapsed > (1000 / maxFPS)) {
          lastTime = timestamp;



          if (navRect) {
            if (direction === 1 && window.scrollY > 0) {
              nav.style.transform = `translateY(-${navRect.height}px)`;
            } else {
              nav.style.transform = `translateY(0px)`;
            }
          } else {
            navRect = nav.getBoundingClientRect();
          }

          if (lastScrollY > window.scrollY) {
            direction = -1;
          }

          if (lastScrollY < window.scrollY) {
            direction = 1;
          }
          lastScrollY = window.scrollY;



        }
        requestAnimationFrame(navPosition);
      }
      requestAnimationFrame(navPosition);


      if (document.querySelector('.notification-toggle')) {
        document.querySelector('.notification-toggle').addEventListener('click', () => {
          document.querySelector('.notification-panel').classList.toggle('show');
        });

        document.querySelector('.remove-notification-panel').addEventListener('click', () => {
          document.querySelector('.notification-panel').classList.remove('show');
        });
      }


      document.querySelector('.menu-toggle').addEventListener('click', function() {
        if (this.classList.contains('menu-show')) {
          this.classList.add('menu-close')
        } else {
          this.classList.remove('menu-close')
        }
        this.classList.toggle('menu-show')

      })
    </script>
  </div>

  <section onclick="closePopup()" class="popup discordJoinPopup">
    <div class="center">
      <div class="images">
        <img src="/Sheryians_Logo_wFKd9VClG.png" alt="">
        <i class="ri-add-line"></i>
        <img src="/images/discord/discord.png" alt="">
      </div>
      <div class="text">
        <h3>
          Authorize discord to access course support
        </h3>
        <small> in order to access our course support channel on the discord you have to authorize us from the discord. </small>

        <div class="buttons">
          <button class="cancel">Cancel</button>
          <button onclick="window.open('/classroom/joinChannel/channle/role')" class="authorize">Authorize</button>
        </div>

      </div>
      <div onclick="closeDiscordPopup()" class="closePopup">
        <i class="ri-close-circle-line"></i>
      </div>
    </div>
  </section>
</nav>
<script defer src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.4.0/axios.min.js" integrity="sha512-uMtXmF28A2Ab/JJO2t/vYhlaa/3ahUOgj1Zf27M5rOo8/+fcTUVH0/E0ll68njmjrLqOBjXM3V9NiPFL5ywWPQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script defer>
  function lazyLoadImages(attribute) {
    const lazyImages = document.querySelectorAll(`[${attribute}]`);

    const options = {
      root: null, // viewport
      rootMargin: '0px',
      threshold: 0.1 // load when 10% of the image is visible
    };

    const imageObserver = new IntersectionObserver((entries, observer) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          const img = entry.target;
          img.src = img.dataset.lazySrc;
          img.removeAttribute('data-lazy-src');
          observer.unobserve(img);
        }
      });
    }, options);

    lazyImages.forEach(image => {
      imageObserver.observe(image);
    });
  }
  async function openNotification(link, id) {
    try {
      axios.post("/classroom/notifications/update", {
        notificationId: id
      })
      window.location.href = link
    } catch (err) {
      console.log(err)
    }
  }

  function renderTimeSinceDate() {
    document.querySelectorAll(".notifications small").forEach((elem) => {
      elem.textContent = timeSince(new Date(elem.getAttribute('data-time')))
    })
  }

  function timeSince(date) {
    // Get the current date
    const now = new Date();

    // Calculate the difference in milliseconds
    const difference = now.getTime() - date.getTime();

    // Handle negative difference (future date)
    if (difference < 0) {
      return "Date in the future";
    }

    // Calculate days and months
    const days = Math.floor(difference / (1000 * 60 * 60 * 24));
    const months = Math.floor(days / 30);

    // Determine unit (days or months)
    const unit = months >= 1 ? "months" : "days";
    const value = months >= 1 ? months : days;

    // Format the output string
    const output = `${value} ${unit} ago`;

    return output;
  }


  async function joinDiscord(channel_id, role_id, user_id) {
    let response = await axios.post(`/classroom/is_user_in_guild/${user_id}`)
    console.log(response)
    const isUserInGuild = response.data.is_user_in_guild

    if (!isUserInGuild) {
      openDiscordPopup()
      return
    }

    const currentLectureId = document.querySelector('.currentPlaying').getAttribute('data-lecture-id')
    window.open(`/classroom/ticket/${currentLectureId}`)
  }

  async function enterDiscord(channel_id, role_id, user_id) {
    let response = await axios.post(`/classroom/is_user_in_guild/${user_id}`)
    const isUserInGuild = response.data.is_user_in_guild

    if (!isUserInGuild) {
      openDiscordPopup()
      return
    }

    window.open(`/classroom/joinChannel/${channel_id}/${role_id}`)
  }

  function openDiscordPopup() {
    document.querySelector('.discordJoinPopup').style.display = 'flex'
    document.querySelector('.discordJoinPopup').classList.add('active')
    document.querySelector('.discordJoinPopup').style.opacity = '1'
    try {
      if (lenis)
        lenis.stop()
    } catch (err) {

    }
  }

  function closePopup() {
    document.querySelectorAll('.popup').forEach(pop => {
      pop.classList.remove('active')
      pop.style.display = 'none'
      pop.style.opacity = '0'
    })

    try {
      if (lenis)
        lenis.start()
    } catch (er) {

    }
  }
  lazyLoadImages('data-lazy-src')
  lazyLoadImages('srcset')
</script>


</body>

</html>