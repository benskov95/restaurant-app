<template>
    <div id="about-page">
        <div class="col">
            <img src="https://www.thespruceeats.com/thmb/4z_oB9CDXgBNVmwsPjpmtzOTNUU=/2578x2578/smart/filters:no_upscale()/Steaks-on-the-Grill-58a72a285f9b58a3c95a4a2d.jpg" />
        </div>
        <div class="col">
            <div class="content">
                <h1>About us</h1>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce in tortor orci. Cras non cursus ipsum, id suscipit orci. Ut tincidunt nec ex id rutrum. Donec molestie leo a est ultricies, eleifend feugiat mi rutrum.<br /><br/> 
                    Aliquam non mi et leo ultrices mollis. Etiam sed turpis orci. Fusce eu finibus arcu. Nulla eu nunc nec urna ultricies consectetur. Nam metus velit, ultricies at diam vitae, tristique sodales sapien. Nullam placerat arcu turpis, a auctor nisl gravida sed. <br /><br/> 
                    Proin varius quam quis mauris lacinia, sit amet placerat ante lacinia. Quisque vehicula augue eget sapien sodales, eget ullamcorper purus ullamcorper. Ut justo nisi, scelerisque in nulla in, bibendum laoreet libero. Ut gravida rutrum lorem, quis accumsan justo dapibus et. <br /><br/>
                    Nam at semper sapien. Aenean quis fringilla mi, elementum faucibus odio. Quisque augue est, accumsan quis lorem eu, gravida eleifend lectus. Aliquam erat volutpat. Nunc sapien metus, vulputate sed lorem sed, semper finibus magna. Nam vel justo volutpat, auctor purus eu, blandit nisl. Pellentesque pretium viverra ipsum. Praesent non nunc in est mattis pulvinar non sit amet justo. <br /><br/>  
                    Phasellus tincidunt urna interdum ipsum pretium, eget porttitor turpis facilisis. Nulla urna tellus, ullamcorper vitae aliquet id, tempor a erat. Maecenas gravida ante augue. Integer augue lacus, bibendum vel lacinia non, iaculis ac eros.
                </p>
            </div>
        </div>
    </div>
</template>

<script>
</script>

<style scoped>
    #about-page {
        display: grid;
        grid-template-columns: 50% 50%;
        transform: skewY(3deg);
    }
    .content {
        color: white;
        transform: skewy(-3deg);
    }
    .content p {
        font-size: 1.2rem;
        width: 60%;
        margin: 0px auto 0px auto;
        padding-bottom: 1.5rem;
    }
    .col {
        background-color: orange;
    }
    .col img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
</style>