#!/bin/sh

: ${GALAXY_VIRTUAL_ENV:=.venv}
if [ ! -e "$GALAXY_VIRTUAL_ENV" ]; then
    python3 -m venv "$GALAXY_VIRTUAL_ENV";
    . "$GALAXY_VIRTUAL_ENV/bin/activate"
    pip install 'pydantic<2'
    pip install gx-tool-db
fi
. "$GALAXY_VIRTUAL_ENV/bin/activate"

# Import server tool panel as backbone.
gx-tool-db import-server --server cliqseq_eu
gx-tool-db import-server --server humancellatlas_eu
gx-tool-db import-server --server metabolomics_eu
gx-tool-db import-server --server ml_eu
gx-tool-db import-server --server proteomics_eu
gx-tool-db import-server --server annotation_eu
gx-tool-db import-server --server cheminformatics_eu
gx-tool-db import-server --server covid19_eu
gx-tool-db import-server --server graphclust_eu
gx-tool-db import-server --server imaging_eu
gx-tool-db import-server --server metagenomics_eu
gx-tool-db import-server --server nanopore_eu
gx-tool-db import-server --server rna_eu
gx-tool-db import-server --server assembly_eu
gx-tool-db import-server --server climate_eu
gx-tool-db import-server --server ecology_eu
gx-tool-db import-server --server hicexplorer_eu
gx-tool-db import-server --server microbiome_eu
gx-tool-db import-server --server plants_eu
gx-tool-db import-server --server singlecell_eu

# Attach labels to tools in servers
gx-tool-db  import-server-as-label --server cliqseq_eu cliqseq
gx-tool-db  import-server-as-label --server humancellatlas_eu humancellatlas
gx-tool-db  import-server-as-label --server metabolomics_eu metabolomics
gx-tool-db  import-server-as-label --server ml_eu ml
gx-tool-db  import-server-as-label --server proteomics_eu proteomics
gx-tool-db  import-server-as-label --server annotation_eu annotation
gx-tool-db  import-server-as-label --server cheminformatics_eu cheminformatics
gx-tool-db  import-server-as-label --server covid19_eu covid19
gx-tool-db  import-server-as-label --server graphclust_eu graphclust
gx-tool-db  import-server-as-label --server imaging_eu imaging
gx-tool-db  import-server-as-label --server metagenomics_eu metagenomics
gx-tool-db  import-server-as-label --server nanopore_eu nanopore
gx-tool-db  import-server-as-label --server rna_eu rna
gx-tool-db  import-server-as-label --server assembly_eu assembly
gx-tool-db  import-server-as-label --server climate_eu climate
gx-tool-db  import-server-as-label --server ecology_eu ecology
gx-tool-db  import-server-as-label --server hicexplorer_eu hicexplorer
gx-tool-db  import-server-as-label --server microbiome_eu microbiome
gx-tool-db  import-server-as-label --server plants_eu plants
gx-tool-db  import-server-as-label --server singlecell_eu singlecell

# export panels for each label
gx-tool-db export-panel-view  --view_type activity --require-label cliqseq cliqseq cliqseq_eu
gx-tool-db export-panel-view  --view_type activity --require-label humancellatlas humancellatlas humancellatlas_eu
gx-tool-db export-panel-view  --view_type activity --require-label metabolomics metabolomics metabolomics_eu
gx-tool-db export-panel-view  --view_type activity --require-label ml ml ml_eu
gx-tool-db export-panel-view  --view_type activity --require-label proteomics proteomics proteomics_eu
gx-tool-db export-panel-view  --view_type activity --require-label annotation annotation annotation_eu
gx-tool-db export-panel-view  --view_type activity --require-label cheminformatics cheminformatics cheminformatics_eu
gx-tool-db export-panel-view  --view_type activity --require-label covid19 covid19 covid19_eu
gx-tool-db export-panel-view  --view_type activity --require-label graphclust graphclust graphclust_eu
gx-tool-db export-panel-view  --view_type activity --require-label imaging imaging imaging_eu
gx-tool-db export-panel-view  --view_type activity --require-label metagenomics metagenomics metagenomics_eu
gx-tool-db export-panel-view  --view_type activity --require-label nanopore nanopore nanopore_eu
gx-tool-db export-panel-view  --view_type activity --require-label rna rna rna_eu
gx-tool-db export-panel-view  --view_type activity --require-label assembly assembly assembly_eu
gx-tool-db export-panel-view  --view_type activity --require-label climate climate climate_eu
gx-tool-db export-panel-view  --view_type activity --require-label ecology ecology ecology_eu
gx-tool-db export-panel-view  --view_type activity --require-label hicexplorer hicexplorer hicexplorer_eu
gx-tool-db export-panel-view  --view_type activity --require-label microbiome microbiome microbiome_eu
gx-tool-db export-panel-view  --view_type activity --require-label plants plants plants_eu
gx-tool-db export-panel-view  --view_type activity --require-label singlecell singlecell singlecell_eu
