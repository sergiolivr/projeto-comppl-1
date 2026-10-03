# Atalho na raiz do projeto: encaminha os alvos para o pacote de entrega
# em trabalho_pratico/. Variáveis de linha de comando (ex.: REPS=1,
# ORDENS="1000 2000") são repassadas automaticamente ao sub-make.

.DEFAULT_GOAL := all

alvos := all csv2bin bin2csv specs asm dados bench graficos entrega \
         clean limpar-dados distclean ajuda

$(alvos):
	@$(MAKE) -C trabalho_pratico $@

.PHONY: $(alvos)
