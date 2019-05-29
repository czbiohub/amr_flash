amr_library:
	cd flash && python make_genes_and_identify_all_targets.py --targets ../inputs/full_guide_set/genes.fasta \
								  --padding ../inputs/full_guide_set/padding.yml
	cd flash && $(MAKE) build_indices
	cd flash && python optimizer.py --output ../library.txt \
				      --include ../inputs/full_guide_set/all_ordered_guides.txt \
				      --padding ../inputs/full_guide_set/padding.yml

	cd flash && python extract_guides.py --library ../library.txt \
					     --genes ../inputs/full_guide_set/amr_staph_genes.txt \
					     --max-cuts 10 \
					     --output ../amr_library.txt \
					     --padding ../inputs/full_guide_set/padding.yml
