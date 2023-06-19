-------- DELETE CONSTRAINT AND INDEXES PRORROGA WITHOUT PK
-- CONSTRAINT ciitev_prorroga_pkey PRIMARY KEY (id_prorroga),
-- CONSTRAINT ciitev_prorroga_clave_cat_bandera_ca_20d5ffc4_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_captura_manual) REFERENCES public.ciitev_cat_captura_manual(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_prorroga_clave_cat_modulo_efe_f6f758c3_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_efectua_prorroga) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_prorroga_clave_cat_turno_pror_46097cc5_fk_ciitev_ca FOREIGN KEY (clave_cat_turno_prorroga) REFERENCES public.ciitev_cat_turno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_prorroga_folio_permiso_5723df80_fk_ciitev_pe FOREIGN KEY (folio_permiso) REFERENCES public.ciitev_permiso_auto_americano(folio) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_prorroga RESTART IDENTITY;

ALTER TABLE public.ciitev_prorroga
    DROP CONSTRAINT IF EXISTS ciitev_prorroga_clave_cat_bandera_ca_20d5ffc4_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_prorroga_clave_cat_modulo_efe_f6f758c3_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_prorroga_clave_cat_turno_pror_46097cc5_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_prorroga_folio_permiso_5723df80_fk_ciitev_pe;

-------- DELETE CONSTRAINT AND INDEXES PERMISO AUTO AMERICANO WITHOUT PK
-- CONSTRAINT ciitev_permiso_auto_americano_pkey PRIMARY KEY (folio),
-- CONSTRAINT ciitev_permiso_auto__clave_cat_afianzador_8a6b0b93_fk_ciitev_ca FOREIGN KEY (clave_cat_afianzadora) REFERENCES public.ciitev_cat_afianzadora(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_bandera_in_ba39e4d2_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_inicio_facultades) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_bandera_re_655063a6_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_remolque) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_estado_des_f8508ea3_fk_ciitev_ca FOREIGN KEY (clave_cat_estado_destino) REFERENCES public.ciitev_cat_estados_mexico(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_estatus_de_de6e65d5_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_deposito) REFERENCES public.ciitev_cat_estatus_deposito(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_estatus_pe_ace65f09_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_permiso) REFERENCES public.ciitev_cat_estatus_permiso(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_estatus_re_734b6b92_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_retorno) REFERENCES public.ciitev_cat_estatus_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_forma_pago_0a5cd422_fk_ciitev_ca FOREIGN KEY (clave_cat_forma_pago) REFERENCES public.ciitev_cat_forma_pago(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_modulo_ent_39e5826d_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_entrada) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_modulo_ing_6f88bd8b_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_ingreso) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_modulo_liq_a05f5b80_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_liquidacion) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_modulo_ret_3d48c9e4_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_retorno) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_motivo_baj_e274a7ec_fk_ciitev_ca FOREIGN KEY (clave_cat_motivo_baja) REFERENCES public.ciitev_cat_motivo_cancelacion(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_tipo_captu_9ee4698c_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_captura) REFERENCES public.ciitev_cat_captura_manual(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_tipo_garan_efb5f627_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_garantia) REFERENCES public.ciitev_cat_tipo_garantia(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_tipo_moned_fb2b7be6_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_moneda_pago) REFERENCES public.ciitev_cat_tipo_moneda(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__clave_cat_tipo_retor_3dff2945_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_retorno) REFERENCES public.ciitev_cat_tipo_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_auto__id_importador_f5d36e58_fk_ciitev_im FOREIGN KEY (id_importador) REFERENCES public.ciitev_importador(id_importador) DEFERRABLE INITIALLY DEFERRED

TRUNCATE public.ciitev_permiso_auto_americano RESTART IDENTITY;

ALTER TABLE public.ciitev_permiso_auto_americano
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_afianzador_8a6b0b93_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_bandera_in_ba39e4d2_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_bandera_re_655063a6_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_estado_des_f8508ea3_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_estatus_de_de6e65d5_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_estatus_pe_ace65f09_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_estatus_re_734b6b92_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_forma_pago_0a5cd422_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_modulo_ent_39e5826d_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_modulo_ing_6f88bd8b_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_modulo_liq_a05f5b80_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_modulo_ret_3d48c9e4_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_motivo_baj_e274a7ec_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_tipo_captu_9ee4698c_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_tipo_garan_efb5f627_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_tipo_moned_fb2b7be6_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__clave_cat_tipo_retor_3dff2945_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto__id_importador_f5d36e58_fk_ciitev_im;

-------- DELETE CONSTRAINT AND INDEXES PERMISO EMBARCACION WITHOUT PK
-- CONSTRAINT ciitev_permiso_embarcacion_pkey PRIMARY KEY (folio),
-- CONSTRAINT ciitev_permiso_embar_clave_cat_bandera_in_d4c1a49e_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_inicio_facultades) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_bandera_re_4b63ca87_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_remolque) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_documento__4e5016bf_fk_ciitev_ca FOREIGN KEY (clave_cat_documento_iitv) REFERENCES public.ciitev_cat_documento_iitv(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_estado_des_c6bccefc_fk_ciitev_ca FOREIGN KEY (clave_cat_estado_destino) REFERENCES public.ciitev_cat_estados_mexico(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_estatus_pe_940aeb33_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_permiso) REFERENCES public.ciitev_cat_estatus_permiso(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_estatus_re_0d4cb739_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_retorno) REFERENCES public.ciitev_cat_estatus_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_forma_pago_73cdcad3_fk_ciitev_ca FOREIGN KEY (clave_cat_forma_pago) REFERENCES public.ciitev_cat_forma_pago(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_modulo_14dec904_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_modulo_ret_1a6b1e42_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_retorno) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_motivo_baj_f9323ae7_fk_ciitev_ca FOREIGN KEY (clave_cat_motivo_baja) REFERENCES public.ciitev_cat_motivo_cancelacion(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_tipo_captu_f4c5c389_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_captura) REFERENCES public.ciitev_cat_captura_manual(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_tipo_moned_fa4f9a58_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_moneda_pago) REFERENCES public.ciitev_cat_tipo_moneda(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_clave_cat_tipo_retor_3b3315b2_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_retorno) REFERENCES public.ciitev_cat_tipo_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_embar_id_importador_f2d650df_fk_ciitev_im FOREIGN KEY (id_importador) REFERENCES public.ciitev_importador(id_importador) DEFERRABLE INITIALLY DEFERRED

TRUNCATE public.ciitev_permiso_embarcacion RESTART IDENTITY;

ALTER TABLE public.ciitev_permiso_embarcacion
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_bandera_in_d4c1a49e_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_bandera_re_4b63ca87_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_documento__4e5016bf_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_estado_des_c6bccefc_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_estatus_pe_940aeb33_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_estatus_re_0d4cb739_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_forma_pago_73cdcad3_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_modulo_14dec904_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_modulo_ret_1a6b1e42_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_motivo_baj_f9323ae7_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_tipo_captu_f4c5c389_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_tipo_moned_fa4f9a58_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_clave_cat_tipo_retor_3b3315b2_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embar_id_importador_f2d650df_fk_ciitev_im;


-------- DELETE CONSTRAINT AND INDEXES PERMISO SOLO SONORA WITHOUT PK
-- CONSTRAINT ciitev_permiso_solo_sonora_pkey PRIMARY KEY (folio),
-- CONSTRAINT ciitev_permiso_solo__clave_cat_bandera_in_ae922064_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_inicio_facultades) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_bandera_re_b7e4a74d_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_remolque) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_estado_des_048d6b35_fk_ciitev_ca FOREIGN KEY (clave_cat_estado_destino) REFERENCES public.ciitev_cat_estados_mexico(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_estatus_pe_4ddc3d8f_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_permiso) REFERENCES public.ciitev_cat_estatus_permiso(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_estatus_re_2e15845e_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_retorno) REFERENCES public.ciitev_cat_estatus_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_forma_pago_df9a0233_fk_ciitev_ca FOREIGN KEY (clave_cat_forma_pago) REFERENCES public.ciitev_cat_forma_pago(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_modulo_58ae4112_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_modulo_ret_52938336_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_retorno) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_motivo_baj_8b7b072a_fk_ciitev_ca FOREIGN KEY (clave_cat_motivo_baja) REFERENCES public.ciitev_cat_motivo_cancelacion(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_tipo_captu_f7253780_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_captura) REFERENCES public.ciitev_cat_captura_manual(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_tipo_moned_e3215920_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_moneda_pago) REFERENCES public.ciitev_cat_tipo_moneda(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__clave_cat_tipo_retor_b5f3fe1d_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_retorno) REFERENCES public.ciitev_cat_tipo_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_solo__id_importador_2612185f_fk_ciitev_im FOREIGN KEY (id_importador) REFERENCES public.ciitev_importador(id_importador) DEFERRABLE INITIALLY DEFERRED

TRUNCATE public.ciitev_permiso_solo_sonora RESTART IDENTITY;

ALTER TABLE public.ciitev_permiso_solo_sonora
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_bandera_in_ae922064_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_bandera_re_b7e4a74d_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_estado_des_048d6b35_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_estatus_pe_4ddc3d8f_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_estatus_re_2e15845e_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_forma_pago_df9a0233_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_modulo_58ae4112_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_modulo_ret_52938336_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_motivo_baj_8b7b072a_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_tipo_captu_f7253780_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_tipo_moned_e3215920_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__clave_cat_tipo_retor_b5f3fe1d_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo__id_importador_2612185f_fk_ciitev_im;

-------- DELETE CONSTRAINT AND INDEXES PERMISO CASA RODANTE WITHOUT PK
-- CONSTRAINT ciitev_permiso_casa_rodante_pkey PRIMARY KEY (folio),
-- CONSTRAINT ciitev_permiso_casa__clave_cat_bandera_in_22ddfe84_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_inicio_facultades) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_bandera_re_639391cd_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_remolque) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_documento__3425cd61_fk_ciitev_ca FOREIGN KEY (clave_cat_documento_iitv) REFERENCES public.ciitev_cat_documento_iitv(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_estado_des_56e7493f_fk_ciitev_ca FOREIGN KEY (clave_cat_estado_destino) REFERENCES public.ciitev_cat_estados_mexico(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_estatus_pe_34af4720_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_permiso) REFERENCES public.ciitev_cat_estatus_permiso(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_estatus_re_e9a02f40_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_retorno) REFERENCES public.ciitev_cat_estatus_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_forma_pago_05b19f8d_fk_ciitev_ca FOREIGN KEY (clave_cat_forma_pago) REFERENCES public.ciitev_cat_forma_pago(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_modulo_30c8461d_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_modulo_ret_3e79339a_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_retorno) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_motivo_baj_93a4e49c_fk_ciitev_ca FOREIGN KEY (clave_cat_motivo_baja) REFERENCES public.ciitev_cat_motivo_cancelacion(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_tipo_captu_3b9bda19_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_captura) REFERENCES public.ciitev_cat_captura_manual(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_tipo_moned_7c284685_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_moneda_pago) REFERENCES public.ciitev_cat_tipo_moneda(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__clave_cat_tipo_retor_6939fa91_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_retorno) REFERENCES public.ciitev_cat_tipo_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_casa__id_importador_bff21c27_fk_ciitev_im FOREIGN KEY (id_importador) REFERENCES public.ciitev_importador(id_importador) DEFERRABLE INITIALLY DEFERRED

TRUNCATE public.ciitev_permiso_casa_rodante RESTART IDENTITY;

ALTER TABLE public.ciitev_permiso_casa_rodante
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_bandera_in_22ddfe84_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_bandera_re_639391cd_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_documento__3425cd61_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_estado_des_56e7493f_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_estatus_pe_34af4720_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_estatus_re_e9a02f40_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_forma_pago_05b19f8d_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_modulo_30c8461d_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_modulo_ret_3e79339a_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_motivo_baj_93a4e49c_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_tipo_captu_3b9bda19_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_tipo_moned_7c284685_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__clave_cat_tipo_retor_6939fa91_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa__id_importador_bff21c27_fk_ciitev_im;

-------- DELETE CONSTRAINT AND INDEXES INTERNADOR FRONTERIZO WITHOUT PK
-- CONSTRAINT ciitev_internador_fronterizo_pkey PRIMARY KEY (id_internador_fronterizo),
-- CONSTRAINT ciitev_internador_fr_folio_permiso_7344e004_fk_ciitev_pe FOREIGN KEY (folio_permiso) REFERENCES public.ciitev_permiso_internacion(folio) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_internador_fr_id_vehiculo_415da6cd_fk_ciitev_ve FOREIGN KEY (id_vehiculo) REFERENCES public.ciitev_vehiculo(id_vehiculo) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_internador_fronterizo RESTART IDENTITY;

ALTER TABLE public.ciitev_internador_fronterizo
    DROP CONSTRAINT IF EXISTS ciitev_internador_fr_folio_permiso_7344e004_fk_ciitev_pe,
    DROP CONSTRAINT IF EXISTS ciitev_internador_fr_id_vehiculo_415da6cd_fk_ciitev_ve;

-------- DELETE CONSTRAINT AND INDEXES PERMISO INTERNACION WITHOUT PK
-- CONSTRAINT ciitev_permiso_internacion_pkey PRIMARY KEY (folio),
-- CONSTRAINT ciitev_permiso_inter_clave_cat_bandera_in_67c99165_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_inicio_facultades) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_bandera_re_e353b6cc_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_remolque) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_documento__950d6872_fk_ciitev_ca FOREIGN KEY (clave_cat_documento_iitv) REFERENCES public.ciitev_cat_documento_iitv(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_estatus_pe_eccd9cf7_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_permiso) REFERENCES public.ciitev_cat_estatus_permiso(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_estatus_re_187eb37f_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_retorno) REFERENCES public.ciitev_cat_estatus_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_forma_pago_35ef16ab_fk_ciitev_ca FOREIGN KEY (clave_cat_forma_pago) REFERENCES public.ciitev_cat_forma_pago(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_modulo_eb1de356_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_modulo_ret_9b9324ee_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_retorno) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_motivo_baj_3e0efe4b_fk_ciitev_ca FOREIGN KEY (clave_cat_motivo_baja) REFERENCES public.ciitev_cat_motivo_cancelacion(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_tipo_captu_de37d968_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_captura) REFERENCES public.ciitev_cat_captura_manual(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_tipo_moned_de8ce627_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_moneda_pago) REFERENCES public.ciitev_cat_tipo_moneda(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_permiso_inter_clave_cat_tipo_retor_c93f0eaf_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_retorno) REFERENCES public.ciitev_cat_tipo_retorno(clave) DEFERRABLE INITIALLY DEFERRED

TRUNCATE public.ciitev_permiso_internacion RESTART IDENTITY;

ALTER TABLE public.ciitev_permiso_internacion
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_bandera_in_67c99165_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_bandera_re_e353b6cc_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_documento__950d6872_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_estatus_pe_eccd9cf7_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_estatus_re_187eb37f_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_forma_pago_35ef16ab_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_modulo_eb1de356_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_modulo_ret_9b9324ee_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_motivo_baj_3e0efe4b_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_tipo_captu_de37d968_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_tipo_moned_de8ce627_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_permiso_inter_clave_cat_tipo_retor_c93f0eaf_fk_ciitev_ca;

-------- DELETE CONSTRAINT AND INDEXES VEHICULO REMOLCADO WITHOUT PK
	-- CONSTRAINT ciitev_vehiculo_remolcado_pkey PRIMARY KEY (id_vehiculo_remolcado),
	-- CONSTRAINT ciitev_vehiculo_remo_clave_clase_vehiculo_3188a2b8_fk_ciitev_ca FOREIGN KEY (clave_clase_vehiculo_remolcado) REFERENCES public.ciitev_cat_clase_vehiculo(clave) DEFERRABLE INITIALLY DEFERRED,
	-- CONSTRAINT ciitev_vehiculo_remo_clave_tipo_vehiculo__34d158bc_fk_ciitev_ca FOREIGN KEY (clave_tipo_vehiculo_remolcado) REFERENCES public.ciitev_cat_tipo_vehiculo(clave) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_vehiculo_remolcado RESTART IDENTITY;

ALTER TABLE public.ciitev_vehiculo_remolcado
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_remo_clave_clase_vehiculo_3188a2b8_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_remo_clave_tipo_vehiculo__34d158bc_fk_ciitev_ca;
   
-------- DELETE CONSTRAINT AND INDEXES VEHICULO WITHOUT PK
-- CONSTRAINT ciitev_vehiculo_pkey PRIMARY KEY (id_vehiculo)
-- CONSTRAINT ciitev_vehiculo_clave_cat_bandera_im_9319f21c_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_importador_propietario) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_vehiculo_clave_cat_bandera_re_832df165_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_remolque) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_vehiculo_clave_cat_clase_vehi_ff11c13a_fk_ciitev_ca FOREIGN KEY (clave_cat_clase_vehiculo) REFERENCES public.ciitev_cat_clase_vehiculo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_vehiculo_clave_cat_marca_vehi_5581fe11_fk_ciitev_ca FOREIGN KEY (clave_cat_marca_vehiculo) REFERENCES public.ciitev_cat_marca_vehiculo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_vehiculo_clave_cat_tipo_vehic_00a94c4a_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_vehiculo) REFERENCES public.ciitev_cat_tipo_vehiculo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_vehiculo_id_importador_8c521ef1_fk_ciitev_im FOREIGN KEY (id_importador) REFERENCES public.ciitev_importador(id_importador) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_vehiculo_id_propietario_0b73b448_fk_ciitev_pr FOREIGN KEY (id_propietario) REFERENCES public.ciitev_propietario(id_propietario) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_vehiculo RESTART IDENTITY;

ALTER TABLE public.ciitev_vehiculo
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_clave_cat_bandera_im_9319f21c_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_clave_cat_bandera_re_832df165_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_clave_cat_clase_vehi_ff11c13a_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_clave_cat_marca_vehi_5581fe11_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_clave_cat_tipo_vehic_00a94c4a_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_id_importador_8c521ef1_fk_ciitev_im,
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_id_propietario_0b73b448_fk_ciitev_pr;

-------- DELETE CONSTRAINT AND INDEXES EMBARCACION WITHOUT PK
-- CONSTRAINT ciitev_embarcacion_pkey PRIMARY KEY (id_embarcacion),
-- CONSTRAINT ciitev_embarcacion_clave_cat_bandera_im_7ea5eaa8_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_importador_propietario) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_embarcacion_clave_cat_bandera_re_a7595db9_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_remolque) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_embarcacion_clave_cat_clase_emba_2929ee44_fk_ciitev_ca FOREIGN KEY (clave_cat_clase_embarcacion) REFERENCES public.ciitev_cat_clase_embarcacion(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_embarcacion_clave_cat_marca_emba_b31523c5_fk_ciitev_ca FOREIGN KEY (clave_cat_marca_embarcacion) REFERENCES public.ciitev_cat_marca_embarcacion(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_embarcacion_clave_cat_tipo_embar_b1f573a6_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_embarcacion) REFERENCES public.ciitev_cat_tipo_embarcacion(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_embarcacion_id_importador_69e4c8d1_fk_ciitev_im FOREIGN KEY (id_importador) REFERENCES public.ciitev_importador(id_importador) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_embarcacion_id_propietario_579e7b89_fk_ciitev_pr FOREIGN KEY (id_propietario) REFERENCES public.ciitev_propietario(id_propietario) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_embarcacion_id_tramitador_7a1fa6b3_fk_ciitev_tr FOREIGN KEY (id_tramitador) REFERENCES public.ciitev_tramitador(id_tramitador) DEFERRABLE INITIALLY DEFERRED


TRUNCATE TABLE public.ciitev_embarcacion RESTART IDENTITY;
ALTER TABLE public.ciitev_embarcacion ALTER COLUMN activo SET DEFAULT true;

ALTER TABLE public.ciitev_embarcacion
    DROP CONSTRAINT IF EXISTS ciitev_embarcacion_clave_cat_bandera_im_7ea5eaa8_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_embarcacion_clave_cat_bandera_re_a7595db9_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_embarcacion_clave_cat_clase_emba_2929ee44_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_embarcacion_clave_cat_marca_emba_b31523c5_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_embarcacion_clave_cat_tipo_embar_b1f573a6_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_embarcacion_id_importador_69e4c8d1_fk_ciitev_im,
    DROP CONSTRAINT IF EXISTS ciitev_embarcacion_id_propietario_579e7b89_fk_ciitev_pr,
    DROP CONSTRAINT IF EXISTS ciitev_embarcacion_id_tramitador_7a1fa6b3_fk_ciitev_tr;

 -------- DELETE CONSTRAINT AND INDEXES CASA RODANTE WITHOUT PK
-- CONSTRAINT ciitev_casa_rodante_pkey PRIMARY KEY (id_casa_rodante),
-- CONSTRAINT ciitev_casa_rodante_clave_cat_bandera_im_f7befb68_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_importador_propietario) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_casa_rodante_clave_cat_bandera_re_3391bf7d_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_remolque) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_casa_rodante_clave_cat_clase_casa_3b01db32_fk_ciitev_ca FOREIGN KEY (clave_cat_clase_casa_rodante) REFERENCES public.ciitev_cat_clase_casa_rodante(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_casa_rodante_clave_cat_marca_casa_1112531d_fk_ciitev_ca FOREIGN KEY (clave_cat_marca_casa_rodante) REFERENCES public.ciitev_cat_marca_casa_rodante(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_casa_rodante_clave_cat_tipo_casa__406481ed_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_casa_rodante) REFERENCES public.ciitev_cat_tipo_casa_rodante(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_casa_rodante_id_importador_5b56f6b8_fk_ciitev_im FOREIGN KEY (id_importador) REFERENCES public.ciitev_importador(id_importador) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_casa_rodante_id_propietario_49c5807f_fk_ciitev_pr FOREIGN KEY (id_propietario) REFERENCES public.ciitev_propietario(id_propietario) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_casa_rodante RESTART IDENTITY;

ALTER TABLE public.ciitev_casa_rodante
    DROP CONSTRAINT IF EXISTS ciitev_casa_rodante_clave_cat_bandera_im_f7befb68_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_casa_rodante_clave_cat_bandera_re_3391bf7d_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_casa_rodante_clave_cat_clase_casa_3b01db32_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_casa_rodante_clave_cat_marca_casa_1112531d_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_casa_rodante_clave_cat_tipo_casa__406481ed_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_casa_rodante_id_importador_5b56f6b8_fk_ciitev_im,
    DROP CONSTRAINT IF EXISTS ciitev_casa_rodante_id_propietario_49c5807f_fk_ciitev_pr;
 
-------- DELETE CONSTRAINT AND INDEXES IMPORTADOR WITHOUT PK
-- CONSTRAINT ciitev_importador_pkey PRIMARY KEY (id_importador),
-- CONSTRAINT ciitev_importador_cat_bandera_domicili_dd701f62_fk_ciitev_ca FOREIGN KEY (cat_bandera_domicilio_mexico) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_importador_clave_cat_calidad_mi_a2961eec_fk_ciitev_ca FOREIGN KEY (clave_cat_calidad_migratoria) REFERENCES public.ciitev_cat_calidad_migratoria(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_importador_clave_cat_documento__cf7878e1_fk_ciitev_ca FOREIGN KEY (clave_cat_documento_identificacion_id) REFERENCES public.ciitev_cat_documento_identificacion(id) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_importador_clave_cat_estado_967903b6_fk FOREIGN KEY (clave_cat_estado) REFERENCES public.ciitev_cat_estados(id) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_importador_clave_cat_estado_mex_ecfed4f9_fk_ciitev_ca FOREIGN KEY (clave_cat_estado_mexico) REFERENCES public.ciitev_cat_estados_mexico(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_importador_clave_cat_forma_migr_06c6b918_fk_ciitev_ca FOREIGN KEY (clave_cat_forma_migratoria) REFERENCES public.ciitev_cat_forma_migratoria(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_importador_clave_cat_pais_957fdf0e_fk_ciitev_ca FOREIGN KEY (clave_cat_pais) REFERENCES public.ciitev_cat_pais(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_importador_clave_cat_tipo_visa_fea455d5_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_visa) REFERENCES public.ciitev_cat_tipo_visa(clave) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_importador RESTART IDENTITY;

ALTER TABLE public.ciitev_importador
    DROP CONSTRAINT IF EXISTS ciitev_importador_cat_bandera_domicili_dd701f62_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_importador_clave_cat_calidad_mi_a2961eec_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_importador_clave_cat_documento__cf7878e1_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_importador_clave_cat_estado_967903b6_fk,
    DROP CONSTRAINT IF EXISTS ciitev_importador_clave_cat_estado_mex_ecfed4f9_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_importador_clave_cat_forma_migr_06c6b918_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_importador_clave_cat_pais_957fdf0e_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_importador_clave_cat_tipo_visa_fea455d5_fk_ciitev_ca;

-------- DELETE CONSTRAINT AND INDEXES TRAMITADOR WITHOUT PK
-- CONSTRAINT ciitev_tramitador_pkey PRIMARY KEY (id_tramitador),
-- CONSTRAINT ciitev_tramitador_clave_cat_calidad_mi_fe2c82a9_fk_ciitev_ca FOREIGN KEY (clave_cat_calidad_migratoria) REFERENCES public.ciitev_cat_calidad_migratoria(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_tramitador_clave_cat_documento__ae16c5c0_fk_ciitev_ca FOREIGN KEY (clave_cat_documento_identificacion_id) REFERENCES public.ciitev_cat_documento_identificacion(id) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_tramitador RESTART IDENTITY;

ALTER TABLE public.ciitev_tramitador
    DROP CONSTRAINT IF EXISTS ciitev_tramitador_clave_cat_calidad_mi_fe2c82a9_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_tramitador_clave_cat_documento__ae16c5c0_fk_ciitev_ca;

-------- DELETE CONSTRAINT AND INDEXES PROPIETARIO WITHOUT PK
-- CONSTRAINT ciitev_propietario_pkey PRIMARY KEY (id_propietario),
-- CONSTRAINT ciitev_propietario_clave_cat_arrendador_ce2a56b4_fk_ciitev_ca FOREIGN KEY (clave_cat_arrendador) REFERENCES public.ciitev_cat_arrendadora(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_propietario_clave_cat_categoria__c9e609e9_fk_ciitev_ca FOREIGN KEY (clave_cat_categoria_fiscal) REFERENCES public.ciitev_cat_categoria_fiscal_propietario(clave) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_propietario RESTART IDENTITY;

ALTER TABLE public.ciitev_propietario
    DROP CONSTRAINT IF EXISTS ciitev_propietario_clave_cat_arrendador_ce2a56b4_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_propietario_clave_cat_categoria__c9e609e9_fk_ciitev_ca;

-------- DELETE CONSTRAINT AND INDEXES REINGRESO WITHOUT PK
-- CONSTRAINT ciitev_reingreso_pkey PRIMARY KEY (id_reingreso),
-- CONSTRAINT ciitev_reingreso_clave_cat_bandera_ca_77506b07_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_captura_manual) REFERENCES public.ciitev_cat_captura_manual(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_bandera_re_8951c33d_fk_ciitev_ca FOREIGN KEY (clave_cat_bandera_remolque) REFERENCES public.ciitev_cat_bandera(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_documento__88dbb267_fk_ciitev_ca FOREIGN KEY (clave_cat_documento_iitv) REFERENCES public.ciitev_cat_documento_iitv(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_estado_des_f4aa9e35_fk_ciitev_ca FOREIGN KEY (clave_cat_estado_destino) REFERENCES public.ciitev_cat_estados_mexico(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_estado_ret_fb37b92a_fk_ciitev_ca FOREIGN KEY (clave_cat_estado_retorno) REFERENCES public.ciitev_cat_estados_mexico(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_estatus_do_3901ef6a_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_documento) REFERENCES public.ciitev_cat_estatus_documento(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_estatus_re_7f6c4592_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_reingreso) REFERENCES public.ciitev_cat_estatus_reingreso(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_estatus_re_d0cd170c_fk_ciitev_ca FOREIGN KEY (clave_cat_estatus_retorno) REFERENCES public.ciitev_cat_estatus_retorno(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_modulo_egr_aa1fd4b7_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_egreso) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_modulo_ing_1a2c3708_fk_ciitev_ca FOREIGN KEY (clave_cat_modulo_ingreso) REFERENCES public.ciitev_cat_modulo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_tipo_egres_6b1aa4f7_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_egreso_arco) REFERENCES public.ciitev_cat_tipo_egreso_arco(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_reingreso_clave_cat_tipo_retor_fafa6361_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_retorno_reingreso) REFERENCES public.ciitev_cat_tipo_retorno(clave) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_reingreso RESTART IDENTITY;

ALTER TABLE public.ciitev_reingreso
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_bandera_ca_77506b07_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_bandera_re_8951c33d_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_documento__88dbb267_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_estado_des_f4aa9e35_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_estado_ret_fb37b92a_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_estatus_do_3901ef6a_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_estatus_re_7f6c4592_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_estatus_re_d0cd170c_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_modulo_egr_aa1fd4b7_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_modulo_ing_1a2c3708_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_tipo_egres_6b1aa4f7_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_clave_cat_tipo_retor_fafa6361_fk_ciitev_ca;

-------- DELETE CONSTRAINT AND INDEXES REMOLQUE WITHOUT PK
-- CONSTRAINT ciitev_remolque_pkey PRIMARY KEY (id_remolque),
-- CONSTRAINT ciitev_remolque_clave_cat_clase_remo_7430d5d8_fk_ciitev_ca FOREIGN KEY (clave_cat_clase_remolque) REFERENCES public.ciitev_cat_clase_vehiculo(clave) DEFERRABLE INITIALLY DEFERRED,
-- CONSTRAINT ciitev_remolque_clave_cat_tipo_remol_5136a6d9_fk_ciitev_ca FOREIGN KEY (clave_cat_tipo_remolque) REFERENCES public.ciitev_cat_tipo_vehiculo(clave) DEFERRABLE INITIALLY DEFERRED

TRUNCATE TABLE public.ciitev_remolque RESTART IDENTITY;

ALTER TABLE public.ciitev_remolque
    DROP CONSTRAINT IF EXISTS ciitev_remolque_clave_cat_clase_remo_7430d5d8_fk_ciitev_ca,
    DROP CONSTRAINT IF EXISTS ciitev_remolque_clave_cat_tipo_remol_5136a6d9_fk_ciitev_ca;

-------- DELETE CONSTRAINT AND INDEXES INICIO FACULTAD WITHOUT PK
-- CONSTRAINT ciitev_inicio_facultad_pkey PRIMARY KEY (folio)

TRUNCATE TABLE public.ciitev_inicio_facultad RESTART IDENTITY;


-------- DELETE ALL PK
ALTER TABLE public.ciitev_permiso_auto_americano
    DROP CONSTRAINT IF EXISTS ciitev_permiso_auto_americano_pkey;
ALTER TABLE public.ciitev_permiso_embarcacion
    DROP CONSTRAINT IF EXISTS ciitev_permiso_embarcacion_pkey;
ALTER TABLE public.ciitev_permiso_solo_sonora
    DROP CONSTRAINT IF EXISTS ciitev_permiso_solo_sonora_pkey;
ALTER TABLE public.ciitev_permiso_casa_rodante
    DROP CONSTRAINT IF EXISTS ciitev_permiso_casa_rodante_pkey;
ALTER TABLE public.ciitev_permiso_internacion
    DROP CONSTRAINT IF EXISTS ciitev_permiso_internacion_pkey;
ALTER TABLE public.ciitev_internador_fronterizo
    DROP CONSTRAINT IF EXISTS ciitev_internador_fronterizo_pkey;
ALTER TABLE public.ciitev_importador
    DROP CONSTRAINT IF EXISTS ciitev_importador_pkey;
ALTER TABLE public.ciitev_prorroga
    DROP CONSTRAINT IF EXISTS ciitev_prorroga_pkey;
ALTER TABLE public.ciitev_embarcacion
    DROP CONSTRAINT IF EXISTS ciitev_embarcacion_pkey;
ALTER TABLE public.ciitev_tramitador
    DROP CONSTRAINT IF EXISTS ciitev_tramitador_pkey;
ALTER TABLE public.ciitev_propietario
    DROP CONSTRAINT IF EXISTS ciitev_propietario_pkey;
ALTER TABLE public.ciitev_casa_rodante
    DROP CONSTRAINT IF EXISTS ciitev_casa_rodante_pkey;
ALTER TABLE public.ciitev_reingreso
    DROP CONSTRAINT IF EXISTS ciitev_reingreso_pkey;
ALTER TABLE public.ciitev_vehiculo_remolcado
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_remolcado_pkey;
ALTER TABLE public.ciitev_remolque
    DROP CONSTRAINT IF EXISTS ciitev_remolque_pkey;
ALTER TABLE public.ciitev_inicio_facultad
    DROP CONSTRAINT IF EXISTS ciitev_inicio_facultad_pkey;
ALTER TABLE public.ciitev_vehiculo
    DROP CONSTRAINT IF EXISTS ciitev_vehiculo_pkey;