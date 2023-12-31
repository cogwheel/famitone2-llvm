.include "imag.inc"

.section .prg_rom_fixed.famitone_update,"ax",@progbits
.globl FamiToneUpdate
FamiToneUpdate:
	lda #mos16hi(__FamiToneUpdate)
	jsr __get_prg_bank
	pha
	lda #mos24bank(__FamiToneUpdate)
	ldx #mos16hi(__FamiToneUpdate)
	jsr __set_prg_bank
	jsr __FamiToneUpdate
	pla
	ldx #mos16hi(__FamiToneUpdate)
	jmp __set_prg_bank

.section .prg_rom_fixed.famitone_music_init,"ax",@progbits
.globl music_init
music_init:
	lda #mos16hi(__music_init)
	jsr __get_prg_bank
	pha
	lda #mos24bank(__music_init)
	ldx #mos16hi(__music_init)
	jsr __set_prg_bank
	jsr __music_init
	pla
	ldx #mos16hi(__music_init)
	jmp __set_prg_bank

.section .prg_rom_fixed.famitone_music_play,"ax",@progbits
.globl music_play
music_play:
	tax
	lda __rc20
	pha
	stx __rc20
	lda #mos16hi(__music_play)
	jsr __get_prg_bank
	pha
	lda #mos24bank(__music_play)
	ldx #mos16hi(__music_play)
	jsr __set_prg_bank
	lda __rc20
	jsr __music_play
	pla
	ldx #mos16hi(__music_play)
	jsr __set_prg_bank
	pla
	sta __rc20
	rts

.section .prg_rom_fixed.famitone_music_stop,"ax",@progbits
.globl music_stop
music_stop:
	lda #mos16hi(__music_stop)
	jsr __get_prg_bank
	pha
	lda #mos24bank(__music_stop)
	ldx #mos16hi(__music_stop)
	jsr __set_prg_bank
	jsr __music_stop
	pla
	ldx #mos16hi(__music_stop)
	jmp __set_prg_bank

.section .prg_rom_fixed.famitone_music_pause,"ax",@progbits
.globl music_pause
music_pause:
	tax
	lda __rc20
	pha
	stx __rc20
	lda #mos16hi(__music_pause)
	jsr __get_prg_bank
	pha
	lda #mos24bank(__music_pause)
	ldx #mos16hi(__music_pause)
	jsr __set_prg_bank
	lda __rc20
	jsr __music_pause
	pla
	ldx #mos16hi(__music_pause)
	jsr __set_prg_bank
	pla
	sta __rc20
	rts

.section .prg_rom_fixed.famitone_sounds_init,"ax",@progbits
.globl sounds_init
sounds_init:
	lda #mos16hi(__sounds_init)
	jsr __get_prg_bank
	pha
	lda #mos24bank(__sounds_init)
	ldx #mos16hi(__sounds_init)
	jsr __set_prg_bank
	jsr __sounds_init
	pla
	ldx #mos16hi(__sounds_init)
	jmp __set_prg_bank

.section .prg_rom_fixed.famitone_sfx_play,"ax",@progbits
.globl sfx_play
sfx_play:
	tay
	lda __rc20
	pha
	lda __rc21
	pha
	sty __rc20
	stx __rc21
	lda #mos16hi(__sfx_play)
	jsr __get_prg_bank
	pha
	lda #mos24bank(__sfx_play)
	ldx #mos16hi(__sfx_play)
	jsr __set_prg_bank
	lda __rc20
	ldx __rc21
	jsr __sfx_play
	pla
	ldx #mos16hi(__sfx_play)
	jsr __set_prg_bank
	pla
	sta __rc21
	pla
	sta __rc20
	rts

.section .prg_rom_fixed.famitone_sample_play,"ax",@progbits
.globl sample_play
sample_play:
	tax
	lda __rc20
	pha
	stx __rc20
	lda #mos16hi(__sample_play)
	jsr __get_prg_bank
	pha
	lda #mos24bank(__sample_play)
	ldx #mos16hi(__sample_play)
	jsr __set_prg_bank
	lda __rc20
	jsr __sample_play
	pla
	ldx #mos16hi(__sample_play)
	jsr __set_prg_bank
	pla
	sta __rc20
	rts
