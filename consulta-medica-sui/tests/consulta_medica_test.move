module 0x0::consulta_medica_test {
    use std::string::utf8;
    use std::vector::length;

    use consulta_medica_sui::paciente;
    use consulta_medica_sui::cita;

    #[test]
    public fun test_crear_paciente() {
        let p = paciente::crear_paciente(1, utf8(b"Juan Perez"), 30);
        assert!(paciente::get_id(&p) == 1, 1);
        assert!(paciente::edad(&p) == 30, 2);
    }

    #[test]
    public fun test_agregar_historial() {
        let mut p = paciente::crear_paciente(2, utf8(b"Ana"), 25);
        assert!(paciente::historial_len(&p) == 0, 3);
        paciente::agregar_historial(&mut p, 100u64, utf8(b"Vacuna"));
        assert!(paciente::historial_len(&p) == 1, 4);
    }

    #[test]
    public fun test_crear_cita() {
        let c = cita::crear_cita(1, utf8(b"2023-10-01"), utf8(b"10:00"), 2, utf8(b"Consulta"));
        assert!(cita::get_id(&c) == 1, 5);
        assert!(cita::get_paciente_id(&c) == 2, 6);
    }

    // --- Nuevas pruebas (3 métodos añadidos) ---

    #[test]
    public fun test_incrementar_edad() {
        let mut p = paciente::crear_paciente(3, utf8(b"Pedro"), 40);
        paciente::incrementar_edad(&mut p);
        assert!(paciente::edad(&p) == 41, 7);
    }

    #[test]
    public fun test_historial_vacio_y_agregar() {
        let mut p = paciente::crear_paciente(4, utf8(b"Laura"), 28);
        assert!(paciente::historial_vacio(&p), 8);
        paciente::agregar_historial(&mut p, 200u64, utf8(b"Consulta"));
        assert!(!paciente::historial_vacio(&p), 9);
    }

    #[test]
    public fun test_cita_es_para_paciente() {
        let c = cita::crear_cita(2, utf8(b"2025-01-01"), utf8(b"11:00"), 99, utf8(b"Revisión"));
        assert!(cita::es_para_paciente(&c, 99), 10);
        assert!(!cita::es_para_paciente(&c, 100), 11);
    }
}