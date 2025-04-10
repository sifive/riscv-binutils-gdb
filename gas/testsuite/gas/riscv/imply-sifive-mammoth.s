.macro imply string base=i
.option push
.option arch, rv64\base\string
nop
.option pop
.endm

.text

imply xsfmmbase
imply xsfmm32a4i
imply xsfmm32a8i
imply xsfmm32a8f
imply xsfmm32a16f
imply xsfmm32a32f
imply xsfmm32a
imply xsfmm64a64f
imply xsfmm128t
imply xsfmm64t
imply xsfmm32t
imply xsfmm16t
