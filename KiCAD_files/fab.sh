#!/bin/sh

echo "SPIN Panels"
input=spin.kicad_pcb
output=SPIN-121-panel.kicad_pcb
kikit panelize \
	--layout "grid; rows: 2; cols: 6; space: 3mm; hbackbone: 7mm;" \
	--tabs annotation \
	--source "tolerance: 10mm" \
	--cuts "mousebites; drill: 0.5mm; spacing: 0.8mm; offset: -0.35mm; prolong: 1mm" \
	--framing "frame; width: 7mm; space: 3mm;" \
	--tooling "4hole; hoffset: 2.5mm; voffset: 2.5mm; size: 1.5mm" \
	--fiducials "4fid; hoffset: 5mm; voffset: 5mm; coppersize: 2mm; opening: 1mm;" \
	--text "simple; text: SPIN V1.2.1 panel JLCJLCJLCJLC; anchor: mt; voffset: 3.5mm; hjustify: center; vjustify: center;" \
	--text2 "simple; text: OwnTech Technologies Sept 2025; anchor: mb; voffset: -3.5mm; hjustify: center; vjustify: center;" \
	--post "millradius: 1mm" \
	$input $output
echo "Panels are cooked. checkout $output"

