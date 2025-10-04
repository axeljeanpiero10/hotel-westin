<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Procesar Pago - THE WESTIN</title>
        
        <!-- Google Fonts o Fuentes de Google -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
        <!--Iconos-->
        <link href="${pageContext.request.contextPath}/img/favicon.ico" rel="icon">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <!-- Libraries Stylesheet -->
        <link href="${pageContext.request.contextPath}/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
        <!-- Bootstrap Stylesheet -->
        <link href="${pageContext.request.contextPath}/css/style.min.css" rel="stylesheet">

        <style>
            .payment-container {
                max-width: 600px;
                margin: 40px auto;
                padding: 30px;
                background: white;
                border-radius: 10px;
                box-shadow: 0 0 20px rgba(0,0,0,0.1);
            }
            .payment-header {
                text-align: center;
                margin-bottom: 30px;
                border-bottom: 2px solid #007bff;
                padding-bottom: 15px;
            }
            .total-amount {
                font-size: 1.5em;
                color: #007bff;
                font-weight: bold;
                text-align: center;
                margin: 20px 0;
            }
            .form-group {
                margin-bottom: 20px;
            }
            .form-control {
                border-radius: 5px;
                border: 1px solid #ddd;
                padding: 12px;
                font-size: 16px;
            }
            .form-control:focus {
                border-color: #007bff;
                box-shadow: 0 0 5px rgba(0,123,255,0.3);
            }
            .btn-payment {
                background: #007bff;
                color: white;
                border: none;
                padding: 15px 30px;
                border-radius: 5px;
                font-size: 18px;
                width: 100%;
                cursor: pointer;
                transition: background 0.3s;
            }
            .btn-payment:hover {
                background: #0056b3;
            }
            .alert {
                padding: 15px;
                border-radius: 5px;
                margin-top: 20px;
            }
            .alert-success {
                background: #d4edda;
                color: #155724;
                border: 1px solid #c3e6cb;
            }
        </style>
    </head>
    <body>
        <!-- -------------------------------------------Barra de navegacion----------------------------------------- -->
        <div class="container-fluid position-relative nav-bar p-0">
            <div class="container-lg position-relative p-0 px-lg-3" style="z-index: 9;">
                <nav class="navbar navbar-expand-lg bg-light navbar-light shadow-lg py-3 py-lg-0 pl-3 pl-lg-5">
                    <!--TITULO-->
                    <a href="" class="navbar-brand">
                        <h1 class="m-0 text-primary"><span class="text-dark">THE W</span>ESTIN</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                        <div class="navbar-nav ml-auto py-0">
                            <a href="index.jsp" class="nav-item nav-link">Casa</a>
                            <a href="about.jsp" class="nav-item nav-link">Nosotros</a>
                            <a href="service.jsp" class="nav-item nav-link">Servicios</a>
                            <a href="package.jsp" class="nav-item nav-link">Paquetes</a>
                            <a href="contact.jsp" class="nav-item nav-link">Contactenos</a>
                            <a href="reservation.jsp" class="nav-item nav-link">Reserva</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- -------------------------------------------FIN Barra de navegacion----------------------------------------- -->

        <!-- Header -->
        <div class="container-fluid page-header mb-5 position-relative overlay-bottom">
            <div class="d-flex flex-column align-items-center justify-content-center pt-0 pt-lg-5"
                 style="min-height: 200px">
                <h1 class="display-4 mb-3 mt-0 mt-lg-5 text-white text-uppercase">Procesar Pago</h1>
            </div>
        </div>

        <div class="container">
            <div class="payment-container">
                <div class="payment-header">
                    <h1><i class="fas fa-credit-card"></i> Procesar Pago</h1>
                </div>
                
                <div class="total-amount">
                    Total a pagar: $<span id="total-pago">0.00</span>
                </div>

                <form id="form-pago">
                    <div class="form-group">
                        <label for="nombre"><i class="fas fa-user"></i> Nombre Completo:</label>
                        <input type="text" class="form-control" id="nombre" placeholder="Ingrese su nombre completo" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="email"><i class="fas fa-envelope"></i> Correo Electrónico:</label>
                        <input type="email" class="form-control" id="email" placeholder="ejemplo@correo.com" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="direccion"><i class="fas fa-map-marker-alt"></i> Dirección:</label>
                        <input type="text" class="form-control" id="direccion" placeholder="Ingrese su dirección completa" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="telefono"><i class="fas fa-phone"></i> Teléfono:</label>
                        <input type="tel" class="form-control" id="telefono" placeholder="+51 123 456 789" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="tarjeta"><i class="fas fa-credit-card"></i> Número de Tarjeta:</label>
                        <input type="text" class="form-control" id="tarjeta" placeholder="1234 5678 9012 3456" maxlength="19" required>
                    </div>
                    
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="fecha-exp"><i class="fas fa-calendar-alt"></i> Fecha de Expiración:</label>
                                <input type="month" class="form-control" id="fecha-exp" required>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="cvv"><i class="fas fa-lock"></i> CVV:</label>
                                <input type="text" class="form-control" id="cvv" placeholder="123" maxlength="3" required>
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="titular"><i class="fas fa-signature"></i> Nombre del Titular:</label>
                        <input type="text" class="form-control" id="titular" placeholder="Como aparece en la tarjeta" required>
                    </div>
                    
                    <button type="submit" class="btn-payment">
                        <i class="fas fa-lock"></i> Confirmar Pago
                    </button>
                </form>
                
                <div id="mensaje" class="mt-3"></div>
            </div>
        </div>

        <!-- --------------------------------- FIN DE PIE DE PAGINA------------------------------------------------------- -->
        <div class="container-fluid bg-dark text-white-50 py-5 px-sm-3 px-lg-5" style="margin-top: 90px;">
            <div class="row pt-5">
                <div class="col-lg-3 col-md-6 mb-5">
                    <a href="" class="navbar-brand">
                        <h1 class="text-primary"><span class="text-white"></span>THE WESTIN</h1>
                    </a>
                    <h5 class="text-primary"><span class="text-white">
                            Descubre un oasis de tranquilidad y lujo en el corazón de la ciudad.
                            Ofrecemos un servicio excepcional y unas instalaciones inigualables
                            para hacer de tu estancia una experiencia memorable.</h5>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Siguenos en</h5>
                    <div class="d-flex justify-content-start">
                        <a class="btn btn-outline-primary btn-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-outline-primary btn-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-outline-primary btn-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-outline-primary btn-square" href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Enlaces Útiles</h5>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-white-50 mb-2" href="about.jsp"><i class="fa fa-angle-right mr-2"></i>Nosotros</a>
                        <a class="text-white-50 mb-2" href="reservation.jsp"><i class="fa fa-angle-right mr-2"></i>Habitaciones</a>
                        <a class="text-white-50 mb-2" href="service.jsp"><i class="fa fa-angle-right mr-2"></i>Servicios</a>
                        <a class="text-white-50 mb-2" href="package.jsp"><i class="fa fa-angle-right mr-2"></i>Paquetes</a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5">
                    <h5 class="text-white text-uppercase mb-4" style="letter-spacing: 5px;">Encuentranos</h5>
                    <p><i class="fa fa-map-marker-alt mr-2"></i>123, Arequipa,Peru</p>
                    <p><i class="fa fa-phone-alt mr-2"></i>+054 968943505</p>
                    <p><i class="fa fa-envelope mr-2"></i>holetthewesting@egmail.com</p>
                </div>
            </div>
        </div>
        <!-- ---------------------------------PIE DE PAGINA------------------------------------------------------- -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/easing/easing.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/tempusdominus/js/moment.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Template Javascript -->
        <script src="${pageContext.request.contextPath}/js/main.js"></script>

        <script>
            // Cargar el total del carrito desde localStorage
            document.addEventListener('DOMContentLoaded', function() {
                const carrito = JSON.parse(localStorage.getItem('carritoWestin')) || [];
                const total = carrito.reduce((sum, item) => sum + (item.precio * item.cantidad), 0);
                document.getElementById('total-pago').textContent = total.toFixed(2);
                
                // Si no hay items en el carrito, redirigir a reservation
                if (carrito.length === 0) {
                    setTimeout(() => {
                        alert('No hay items en el carrito. Redirigiendo a la página de reservas...');
                        window.location.href = 'reservation.jsp';
                    }, 1000);
                }
            });

            // Formatear número de tarjeta
            document.getElementById('tarjeta').addEventListener('input', function(e) {
                let value = e.target.value.replace(/\s+/g, '').replace(/[^0-9]/gi, '');
                let formattedValue = value.match(/.{1,4}/g)?.join(' ');
                if (formattedValue) {
                    e.target.value = formattedValue;
                }
            });

            // Validar CVV
            document.getElementById('cvv').addEventListener('input', function(e) {
                e.target.value = e.target.value.replace(/[^0-9]/g, '').substring(0, 3);
            });

            // Manejar el envío del formulario de pago
            document.getElementById('form-pago').addEventListener('submit', function(e) {
                e.preventDefault();
                
                // Mostrar mensaje de procesamiento
                document.getElementById('mensaje').innerHTML = 
                    '<div class="alert alert-success">Procesando pago, por favor espere...</div>';
                
                // Simular procesamiento de pago
                setTimeout(() => {
                    document.getElementById('mensaje').innerHTML = 
                        '<div class="alert alert-success">' +
                        '<i class="fas fa-check-circle"></i> ¡Pago procesado exitosamente!<br>' +
                        'Se ha enviado un correo de confirmación a: ' + document.getElementById('email').value +
                        '</div>';
                    
                    // Limpiar carrito después del pago exitoso
                    localStorage.removeItem('carritoWestin');
                    
                    // Redirigir a la página principal después de 3 segundos
                    setTimeout(() => {
                        window.location.href = 'index.jsp';
                    }, 3000);
                }, 2000);
            });
        </script>
    </body>
</html>