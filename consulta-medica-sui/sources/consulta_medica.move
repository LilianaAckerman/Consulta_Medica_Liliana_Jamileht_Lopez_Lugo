module consulta_medica_sui::consulta_medica {
    use std::string::String;

    // Paciente sin 'key' para evitar UID y operaciones Sui específicas
    public struct Paciente has store {
        id: u64,
        nombre: String,
        edad: u8,
    }

    // Cita sin 'key'
    public struct Cita has store {
        id: u64,
        fecha: String,
        hora: String,
        paciente_id: u64,
        motivo: String,
    }

    // Crear valores en memoria (retornan structs)
    public fun crear_paciente(id: u64, nombre: String, edad: u8): Paciente {
        Paciente { id, nombre, edad }
    }

    public fun crear_cita(id: u64, fecha: String, hora: String, paciente_id: u64, motivo: String): Cita {
        Cita { id, fecha, hora, paciente_id, motivo }
    }

    // Getters sencillos
    public fun nombre_paciente(p: &Paciente): &String { &p.nombre }
    public fun edad_paciente(p: &Paciente): u8 { p.edad }

    public fun info_cita(c: &Cita): (u64, &String, &String, u64, &String) {
        (c.id, &c.fecha, &c.hora, c.paciente_id, &c.motivo)
    }
}