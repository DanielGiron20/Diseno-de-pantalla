import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 6.0),
                    const Text(
                      'Cuenta de ',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    const Text(
                      'Google',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                   const SizedBox(width: 6.0),
                  ],
                ),
              ),
              IconButton(
                icon:const Icon(Icons.help),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () {},
              ),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 223, 222, 222),
          bottom: const TabBar(
            labelColor:  Color.fromARGB(255, 14, 96, 237),
            indicatorColor:  Color.fromARGB(255, 6, 87, 225),
            tabs: [
              Tab(text: 'Página Principal'),
              Tab(text: 'Informacion personal'),
              Tab(text: 'Datos y privacidad'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildPaginaPrincipal(),
           
          ],
        ),
      ),
    );
  }

  Widget buildPaginaPrincipal() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tu cuenta está protegida',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'La verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.check_circle,
                    size: 50.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          const  SizedBox(height: 24.0),
            GestureDetector(
              onTap: () {
               
                print('Ver detalles');
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Ver detalles',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),

            Container(
              height: 1.0,
              color: Colors.grey,
              margin: const EdgeInsets.symmetric(vertical: 24.0),
            ),

           
           const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding:  EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Verificación de Privacidad',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.verified_user,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
           const SizedBox (height: 24.0),
            GestureDetector(
              onTap: () {
                
                print('Realizar la verificación de seguridad');
              },
              child: const Padding(
                padding:  EdgeInsets.only(left: 16.0),
                child:  Text(
                  'Realizar la verificación de seguridad',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            Container(
              height: 1.0,
              color: Colors.grey,
              margin: const EdgeInsets.symmetric(vertical: 24.0),
            ),
            buildBusquedaInfo(),
          ],
        ),
      ),
    );
  }

  Widget buildBusquedaInfo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          
    Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
      'Buscas otra información?',
      style: TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  ]
),
  SizedBox (height: 18.0),
    Row(
      children: [
        Icon(
          Icons.search,
          size: 30.0,
          color: Colors.black,
        ),
        SizedBox(width: 8.0),
        Text(
          'Buscar en la cuenta de Google',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 8.0),
       Align(
  alignment: Alignment.centerRight,
  child: Icon(
    Icons.keyboard_arrow_right,
    size: 35.0,
    color: Colors.grey,
  ),
)
      ],
    ),

    SizedBox(height: 18.0),
     Row(
      children: [
        Icon(
          Icons.help,
          size: 30.0,
          color: Colors.black,
        ),
        SizedBox(width: 8.0),
        Text(
          'Ver las opciones de ayuda',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 8.0),
        Icon(
          Icons.keyboard_arrow_right,
          size: 35.0,
          color: Colors.grey,
        ),
      ],
    ),

     SizedBox(height: 18.0),
   Row(
      children: [
        Icon(
          Icons.comment,
          size: 35.0,
          color: Colors.black,
        ),
        SizedBox(width: 8.0),
        Text(
          'Enviar comentarios',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
          ),
        ),
        SizedBox(width: 8.0),
        Icon(
          Icons.keyboard_arrow_right,
          size: 35.0,
          color: Colors.grey,
        ),

        
          
      ],
      
    ),


        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    
                    child: Column(
                       
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25.0),
                        Text(
                          'Solo tu puedes ver la configuracion. Tambien puedes revisar la configuracion de Maps, la Busqueda o cualquier servicio de Google que uses con frecuencia.Google protege la privacidad y la seguridad de tus datos. ',
                          style: TextStyle( fontSize: 12.0, color: Colors.grey,),
                        ),
                        Text(
                          "Mas informacion",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.verified_user,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
  ],
      ),
    );
  }


}


