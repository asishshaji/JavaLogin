<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${message}</title>
</head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<style>
    html {
        height: 100%;
    }

    body {
        margin: 0;
    }

    .bg {
        animation: slide 3s ease-in-out infinite alternate;
        background-image: linear-gradient(-60deg, rgb(126, 125, 125) 50%, rgb(39, 39, 39) 50%);
        bottom: 0;
        left: -50%;
        opacity: .5;
        position: fixed;
        right: -50%;
        top: 0;
        z-index: -1;
    }

    .bg2 {
        animation-direction: alternate-reverse;
        animation-duration: 4s;
    }

    .bg3 {
        animation-duration: 5s;
    }

    .content {
        background-color: rgba(211, 211, 211, 0.8);
        border-radius: .8em;
        box-shadow: 0 0 .25em rgba(73, 73, 73, 0.25);
        box-sizing: border-box;
        left: 50%;
        padding: 12vmin;
        position: fixed;
        text-align: center;
        top: 50%;
        transform: translate(-50%, -50%);
    }

    h1 {
        font-family: monospace;
    }

    @keyframes slide {
        0% {
            transform: translateX(-25%);
        }

        100% {
            transform: translateX(25%);
        }
    }
</style>

<body>

    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    <div class="content">
        <h1 class="display-4">Successful</h1>
        <h4 class="text-light">${welcomeMessage}</h4>
        <p class="text-light">${message}</p>
        <a href="/" class="btn btn-dark p-2 mt-2" role="button">Go to home</a>
    </div>
</body>

</html>