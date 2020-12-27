<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Tailwind CSS Modal</title>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss/dist/tailwind.min.css" rel="stylesheet">  
        <style>
          .modal {
            transition: opacity 0.25s ease;
          }
          body.modal-active {
            overflow-x: hidden;
            overflow-y: visible !important;
          }
        </style>
    </head>

    <body class="bg-gray-200 flex items-center justify-center h-screen">

        <button class="modal-open bg-transparent border border-red-500 hover:bg-red-500 
                hover:border-red-500 text-red-500 hover:text-white font-bold py-2 px-4 rounded-full">
                Eliminar Publicacion
        </button>

      <!--Modal-->
        <div class="modal opacity-0 pointer-events-none fixed w-full h-full top-0 left-0 flex items-center justify-center">
            <div class="modal-overlay absolute w-full h-full bg-gray-900 opacity-100">
            </div>

            <div class="modal-container bg-black w-11/12 md:max-w-md mx-auto rounded shadow-lg z-50 overflow-y-auto">

                <div class="modal-close absolute top-0 right-0 cursor-pointer flex flex-col items-center mt-4 mr-4 text-white text-sm z-50">
                    <svg class="fill-current text-white" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">
                        <path d="M14.53 4.53l-1.06-1.06L9 7.94 4.53 3.47 3.47 4.53 7.94 9l-4.47 4.47 1.06 1.06L9 10.06l4.47 4.47 1.06-1.06L10.06 9z">
                        </path>
                    </svg>
                    <span class="text-sm">
                        (Esc)
                    </span>
                </div>

                <!-- Add margin if you want to see some of the overlay behind the modal-->
                <div class="modal-content py-4 text-left px-6">
                    
                    <!--Title-->
                    <div class="flex justify-between items-center pb-3">
                      <p class="text-2xl font-bold">Eliminar Publicacion?</p>
                      <div class="modal-close cursor-pointer z-50">
                        <svg class="fill-current text-black" xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18">
                          <path d="M14.53 4.53l-1.06-1.06L9 7.94 4.53 3.47 3.47 4.53 7.94 9l-4.47 4.47 1.06 1.06L9 10.06l4.47 4.47 1.06-1.06L10.06 9z"></path>
                        </svg>
                      </div>
                    </div>
                    
                    <!--Body-->
                    <p></p>
                    <p>Esta publicacion sera Eliminada Definitivamente</p>
                    <p>Estas seguro de que quieres Eliminarla?</p>
                    <p></p>
                    <p></p>
                    
                    <!--Footer-->
                    <div class="flex justify-end pt-2">
                        <div class="erasebtns">
                            <button class="">
                                <a href="{{ route('image.delete', ['id'=> $image->id]) }}" class="vpbtn btnerase">
                                    Si... Borrar
                                </a>    
                            </button>
                            <button class="modal-close vpbtn btnnoterase">
                                Mejor No
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
            var openmodal = document.querySelectorAll('.modal-open');

            for (var i = 0; i < openmodal.length; i++) {
                openmodal[i].addEventListener('click', function(event){
                    event.preventDefault();
                    toggleModal();
                });
            }

            const overlay = document.querySelector('.modal-overlay');
            overlay.addEventListener('click', toggleModal);

            var closemodal = document.querySelectorAll('.modal-close');
            for (var i = 0; i < closemodal.length; i++) {
                closemodal[i].addEventListener('click', toggleModal);
            }

            document.onkeydown = function(evt) {
                evt = evt || window.event;
                var isEscape = false;
                
                if ("key" in evt) {
                    isEscape = (evt.key === "Escape" || evt.key === "Esc");
                } else {
                    isEscape = (evt.keyCode === 27);
                }
                if (isEscape && document.body.classList.contains('modal-active')){
                    toggleModal();
                }
            };

            function toggleModal () {
                const body = document.querySelector('body');
                const modal = document.querySelector('.modal');
                modal.classList.toggle('opacity-0');
                modal.classList.toggle('pointer-events-none');
                body.classList.toggle('modal-active');
            }
        </script>
    </body>
</html>