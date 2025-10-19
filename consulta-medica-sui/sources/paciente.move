module consulta_medica_sui::paciente {
    // Importa tipos y funciones necesarias
    use std::string::{String, utf8};
    use std::vector::{empty, push_back, length};

    // Define la estructura 'Paciente' que representa a un paciente en el sistema.
    public struct Paciente has store, drop {
        id: u64, // ID único del paciente
        nombre: String, // Nombre del paciente
        edad: u8, // Edad del paciente
        historial_ids: vector<u64>, // IDs de los registros en el historial médico
        historial_detalles: vector<String>, // Detalles de los registros en el historial médico
    }

    // Función para crear un nuevo paciente
    public fun crear_paciente(id: u64, nombre: String, edad: u8): Paciente {
        Paciente {
            id,
            nombre,
            edad,
            historial_ids: empty<u64>(),
            historial_detalles: empty<String>(),
        }
    }

    // Función para agregar un registro al historial médico del paciente
    public fun agregar_historial(p: &mut Paciente, id_registro: u64, detalle: String) {
        push_back(&mut p.historial_ids, id_registro);
        push_back(&mut p.historial_detalles, detalle);
    }

    // Getters públicos para tests y uso externo
    public fun get_id(p: &Paciente): u64 { p.id }
    public fun historial_len(p: &Paciente): u64 { length(&p.historial_ids) }
    public fun nombre(p: &Paciente): &String { &p.nombre }
    public fun edad(p: &Paciente): u8 { p.edad }

    // --- Nuevos métodos solicitados ---
    // Incrementa en 1 la edad del paciente
    public fun incrementar_edad(p: &mut Paciente) {
        p.edad = p.edad + 1;
    }

    // Retorna true si el historial está vacío
    public fun historial_vacio(p: &Paciente): bool {
        length(&p.historial_ids) == 0
    }

    // Placeholder: devuelve string vacío (evita operaciones complejas)
    public fun obtener_info(_paciente: &Paciente): String {
        utf8(b"")
    }
}