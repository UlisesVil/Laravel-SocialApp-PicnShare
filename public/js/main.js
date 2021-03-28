
var url= 'http://proyecto-laravel.com.devel';
//var url= 'http://ulises-social-app.atwebpages.com';

window.addEventListener('load', function(){
    
    $('.btn-like').css('cursor','pointer');
    $('.btn-dislike').css('cursor','pointer');
    
    //Boton de like
    function like(){
        
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
            
            dislike();
        });
    }
    
    like();
    
    //Boton de dislike
    function dislike(){
        
        $('.btn-dislike').unbind('click').click(function(){
            console.log('dislike');
            $(this).addClass('btn-like').removeClass('btn-dislike');
            $(this).attr('src', url+'/img/heartgray.png');
            like();
            
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
    
    
    //Boton Upload
    jQuery('input[type=file]').change(function(){
        var filename = jQuery(this).val().split('\\').pop();
        var idname = jQuery(this).attr('id');
        console.log(jQuery(this));
        console.log(filename);
        console.log(idname);
        jQuery('span.'+idname).next().find('span').html(filename);
    });
    
    
    
    
    function filePreview(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.readAsDataURL(input.files[0]);
            reader.onload = function (e) {
                $('#imagePrev + #divafter').remove();
                $('#imagePrevEdit + #divafteredit').remove();
                $('#imageUser + #divafterUserImage').remove();
                
                $('#imagePrev').after('<div id="divafter" class="uploadform uploadbutton" style="width=100%"><h2 class="uploadform uploadbutton">Preview</h2><img src="'+e.target.result+'" width="100%"/></div>');
                $('#imagePrevEdit').after('<div id="divafteredit"class="imagePrevEdit2" style="width=50%"><h2>For this One?</h2><img src="'+e.target.result+'" style="width: 100%; margin: 0px auto; border-radius: 10px;"/></div>');
                $('#imageUser').after('<div id="divafterUserImage"class="imagePrevEdit2"><h2>For this One?</h2><img src="'+e.target.result+'" style="width: 70%; margin: 0px auto; border-radius: 10px;"/></div>');
            };
        }
    }

    $("#image_path").change(function () {
        filePreview(this);
    });
    
    
    
    
});
