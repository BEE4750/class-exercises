<!DOCTYPE html>
<HTML lang = "en">
<HEAD>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
  {{#:title}}<title>{{:title}}</title>{{/:title}}
  {{{ :header_script }}}

  <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
      tex2jax: {inlineMath: [['$','$'], ['\\(','\\)']]},
      TeX: { equationNumbers: { autoNumber: "AMS" } }
    });
  </script>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Menlo&family=Hind&family=Raleway&family=Yantramanav&display=swap');
</style>

  <script type="text/javascript" async src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.1/MathJax.js?config=TeX-AMS-MML_HTMLorMML">
  </script>

  {{{ :highlight_stylesheet }}}

  <link rel="stylesheet" href={{{ :stylesheet }}}>
</HEAD>

<BODY>
  <div class ="container">
    <div class = "row">
      <div class = "col-md-12 twelve columns">
        <div class="title">
          {{#:title}}<h1 class="title">{{:title}}</h1>{{/:title}}
          {{#:author}}<h2 class="title">{{{:author}}}</h2>{{/:author}}
          {{#:date}}<h2 class="title">{{{:date}}}</h2>{{/:date}}        

        </div>
    <hr class="title">


        {{{ :body }}}

    <hr class="title">
      </div>
    </div>
  </div>
</BODY>

</HTML>