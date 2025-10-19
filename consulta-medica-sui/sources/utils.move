// Este archivo contiene funciones utilitarias que pueden ser utilizadas en otros archivos del proyecto, como funciones de validación o formateo de datos.

module consulta_medica_sui::utils {
    use std::string::{String, utf8};

    // Validación simple (placeholder) para evitar llamadas a API de string no disponibles
    public fun validar_email(_email: &String): bool {
        // Implementación simple: aceptar todos por ahora
        true
    }

    public fun validar_edad(edad: u8): bool {
        edad <= 120
    }

    // Devuelve una cadena vacía segura usando utf8 desde std::string
    public fun formatear_fecha_simple(_dia: u8, _mes: u8, _anio: u16): String {
        utf8(b"")
    }
}