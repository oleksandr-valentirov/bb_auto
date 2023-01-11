#!/bin/sh
BOARD_DIR="$(dirname $0)"

cp $BOARD_DIR/uEnv.txt $BINARIES_DIR/uEnv.txt
dtc -O dtb -o $BINARIES_DIR/BB-UART4-00A0.dtb $BOARD_DIR/BB-UART4-00A0.dts
mkimage -f $BOARD_DIR/bb_fit_img_source.its $BINARIES_DIR/bb_fit_img_blob.itb
