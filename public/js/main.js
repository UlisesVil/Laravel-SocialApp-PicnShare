//Creamos la carpeta js y este archivo main.js en la carpeta Public
//Cargamos en el archivo resources/views/layouts/app.blade.php 
//el script <script src="{{ asset('js/main.js') }}"></script>
//y agregamos jQuery 
//<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
//</script>

//var url= 'http://localhost/master-php/proyecto-laravel/public';
var url= 'http://proyecto-laravel.com.devel';
//var url= 'http://ulises-social-app.atwebpages.com';
console.log(url);
window.addEventListener('load', function(){
    
 
    //alert("esta cargado");
    //$('body').css('background','white');
    
    $('.btn-like').css('cursor','pointer');
    $('.btn-dislike').css('cursor','pointer');
    
    //Boton de like
    function like(){
        //.unbind('click') sirve para borrar todos los bindeos de eventos antiguos
        //y asi se quitan los eventos acumulados
        $('.btn-like').unbind('click').click(function(){
            console.log('like');
            $(this).addClass('btn-dislike').removeClass('btn-like');
            $(this).attr('src', url+'/img/heartred.png');
            console.log(url);
            $.ajax({
                url: url+'/like/'+$(this).data('id'),
                type:'GET',
                succes: function(response){
                    if(response.like){
                        console.log('Has  dado like a la publicacion');
                    }else{
                        console.log('Error al dar like');
                    }
                }
            });
            
            dislike(); //se pone al final la funcion contraria para que vuelva 
            //a recorrer el DOM y vuelva a capturar los elementos que tengan 
            //la clase utilizada y vuelva a bindear el evento
        });
    }
    like();
    
    //Boton de dislike
    function dislike(){
        //.unbind('click') sirve para borrar todos los bindeos de eventos antiguos
        //y asi se quitan los eventos acumulados
        $('.btn-dislike').unbind('click').click(function(){
            console.log('dislike');
            $(this).addClass('btn-like').removeClass('btn-dislike');
            $(this).attr('src', url+'/img/heartgray.png');
            like(); //se pone al final la funcion contraria para que vuelva 
            //a recorrer el DOM y vuelva a capturar los elementos que tengan 
            //la clase utilizada y vuelva a bindear el evento
            
            $.ajax({
                url: url+'/dislike/'+$(this).data('id'),
                type:'GET',
                succes: function(response){
                    if(response.like){
                        console.log('Has  dado dislike a la publicacion');
                    }else{
                        console.log('Error al dar dislike');
                    }
                }
            });
        });
    }
    dislike();
    
    //Buscador
    $('#buscador').submit(function(e){
       
        $(this).attr('action',url+'/gente/'+$('#buscador #search').val());
       
    });
    
    
});

