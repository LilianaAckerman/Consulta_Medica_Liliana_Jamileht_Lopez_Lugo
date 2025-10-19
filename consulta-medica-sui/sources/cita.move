module consulta_medica_sui::cita {
    // Importa tipos y funciones necesarias
    use std::string::String;

    // Define la estructura 'Cita' que representa una cita médica
    public struct Cita has store, drop {
        id: u64,
        fecha: String,
        hora: String,
        paciente_id: u64,
        motivo: String,
    }

    // --- FUNCIONES PRINCIPALES ---

    // Crea una nueva cita médica con los detalles proporcionados
    public fun crear_cita(id: u64, fecha: String, hora: String, paciente_id: u64, motivo: String): Cita {
        Cita { id, fecha, hora, paciente_id, motivo }
    }

    // Obtiene los detalles de una cita médica por su ID
    public fun detalles(c: &Cita): (u64, &String, &String, u64, &String) {
        (c.id, &c.fecha, &c.hora, c.paciente_id, &c.motivo)
    }

    // Getters públicos
    public fun get_id(c: &Cita): u64 { c.id }
    public fun get_paciente_id(c: &Cita): u64 { c.paciente_id }

    // --- Nuevo método solicitado ---
    // Devuelve true si la cita es para el paciente dado
    public fun es_para_paciente(c: &Cita, paciente_id: u64): bool {
        c.paciente_id == paciente_id
    }
}