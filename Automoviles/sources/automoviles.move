module automoviles::automoviles{
    use std::debug::print;
    // se importa utf8
    use std::string::{utf8};

    const NUMERO: u8 = 100;

    public fun suma(x:u8){
        //definir variable mutable con valor 16
        let mut numero = 50u16;
        // se redefine los 8 bits a 16 bits como lonjitud
        let entrada: u16 = x as u16;
        // No es string el "", si no cadena cadena de caracteres

        // ------------------------------------------------------
        print(&(utf8(b"Suma: ")));
        numero = numero + entrada;
        // referencia suma, si no se coloca no se difere
        print(&numero);

        // ------------------------------------------------------
        print(&(utf8(b"Resta: ")));
        numero = numero - entrada;
        // referencia suma, si no se coloca no se difere
        print(&numero);

        // ------------------------------------------------------
        print(&(utf8(b"Multiplicacion: ")));
        numero = numero * entrada;
        // referencia suma, si no se coloca no se difere
        print(&numero);

        // ------------------------------------------------------
        print(&(utf8(b"Division: ")));
        numero = numero / entrada;
        // referencia suma, si no se coloca no se difere
        print(&numero);

        // ------------------------------------------------------
        print(&(utf8(b"Modulo: ")));
        numero = numero % entrada;
        // referencia suma, si no se coloca no se difere
        print(&numero);

        //-------------- Variables booleanas --------------
        let verdadero:bool = true;
        let falso:bool = false;

        print(&(verdadero && falso)); // And
        print(&(verdadero || falso)); // Or 
        print(&(!verdadero)); // Not
        print(&(!falso)); // Not

        // --------- Comporaciones ----------
        print(&(x == NUMERO));
        print(&(x != NUMERO));
        print(&(x > NUMERO));
        print(&(x < NUMERO));
        print(&(x >= NUMERO));
        print(&(x <= NUMERO));

        // --------- Control de flujo (condicionales) -------
        // ---------------- if ---------------------
        if(x == NUMERO){
            print(&(utf8(b"Numero 100")));
        } else if(x < NUMERO){
            print(&(utf8(b"Numero Menor a 100")));
        } else if(x > NUMERO){
            print(&(utf8(b"Numero Mayor a 100")));
        } else {
            print(&(utf8(b"If terminado")));
        };

        // --------- ciclos while -----------
        let mut contador: u8 = 0;
        //while(contador < x){
          //  print(&contador);
            //contador = contador + 1;
        //};

        //print(&(utf8(b"While terminado")));

        // -------------- ciclo loop ----------
        loop{
            contador = contador + 1;
            if(contador == x){
                break;
            } else if((contador % 2) == 0){
                print(&(utf8(b"Numero Par")));
                print(&contador);
                continue;
            };
            print(&(utf8(b"Numero impar")));
        }
    }
    //u8 es la cantidad de almacenamiento de bits
    #[test]
    public fun testing(){
        //print(& suma())
        suma(150);
    } 
}

