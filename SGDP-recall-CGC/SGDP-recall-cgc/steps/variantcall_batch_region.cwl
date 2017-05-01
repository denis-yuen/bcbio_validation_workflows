arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
baseCommand:
- bcbio_nextgen.py
- runfn
- variantcall_batch_region
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 1024
  ramMin: 3072
- class: SoftwareRequirement
  packages:
  - package: bcftools
    specs:
    - https://anaconda.org/bioconda/bcftools
  - package: bedtools
    specs:
    - https://anaconda.org/bioconda/bedtools
  - package: freebayes
    specs:
    - https://anaconda.org/bioconda/freebayes
    version:
    - 1.1.0
  - package: gatk
    specs:
    - https://anaconda.org/bioconda/gatk
  - package: gatk-framework
    specs:
    - https://anaconda.org/bioconda/gatk-framework
  - package: htslib
    specs:
    - https://anaconda.org/bioconda/htslib
  - package: picard
    specs:
    - https://anaconda.org/bioconda/picard
  - package: platypus-variant
    specs:
    - https://anaconda.org/bioconda/platypus-variant
  - package: pythonpy
    specs:
    - https://anaconda.org/bioconda/pythonpy
  - package: samtools
    specs:
    - https://anaconda.org/bioconda/samtools
  - package: vardict
    specs:
    - https://anaconda.org/bioconda/vardict
  - package: vardict-java
    specs:
    - https://anaconda.org/bioconda/vardict-java
  - package: varscan
    specs:
    - https://anaconda.org/bioconda/varscan
  - package: vcfanno
    specs:
    - https://anaconda.org/bioconda/vcfanno
  - package: vcflib
    specs:
    - https://anaconda.org/bioconda/vcflib
  - package: vt
    specs:
    - https://anaconda.org/bioconda/vt
  - package: r
    specs:
    - https://anaconda.org/bioconda/r
    version:
    - 3.2.2
  - package: perl
    specs:
    - https://anaconda.org/bioconda/perl
inputs:
- default: batch-parallel
  id: sentinel_parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel_parallel=
    separate: false
  type: string
- default: vrn_file_region,region
  id: sentinel_outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel_outputs=
    separate: false
  type: string
- id: description
  type:
    inputBinding:
      itemSeparator: ;;
      position: 2
      prefix: description=
      separate: false
    items: string
    type: array
- id: config__algorithm__validate
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: config__algorithm__validate=
      separate: false
    items: 'null'
    type: array
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
      prefix: reference__fasta__base=
      separate: false
    items: File
    type: array
- id: config__algorithm__variantcaller
  type:
    inputBinding:
      itemSeparator: ;;
      position: 5
      prefix: config__algorithm__variantcaller=
      separate: false
    items: string
    type: array
- id: config__algorithm__coverage_interval
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: config__algorithm__coverage_interval=
      separate: false
    items: string
    type: array
- id: metadata__batch
  type:
    inputBinding:
      itemSeparator: ;;
      position: 7
      prefix: metadata__batch=
      separate: false
    items: 'null'
    type: array
- id: config__algorithm__validate_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 8
      prefix: config__algorithm__validate_regions=
      separate: false
    items: 'null'
    type: array
- id: genome_build
  type:
    inputBinding:
      itemSeparator: ;;
      position: 9
      prefix: genome_build=
      separate: false
    items: string
    type: array
- id: reference__rtg
  type:
    inputBinding:
      itemSeparator: ;;
      position: 10
      prefix: reference__rtg=
      separate: false
    items: File
    type: array
- id: metadata__phenotype
  type:
    inputBinding:
      itemSeparator: ;;
      position: 11
      prefix: metadata__phenotype=
      separate: false
    items: string
    type: array
- id: config__algorithm__tools_off
  type:
    inputBinding:
      itemSeparator: ;;
      position: 12
      prefix: config__algorithm__tools_off=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: genome_resources__variation__dbsnp
  type:
    inputBinding:
      itemSeparator: ;;
      position: 13
      prefix: genome_resources__variation__dbsnp=
      separate: false
    items: File
    type: array
- id: genome_resources__variation__cosmic
  type:
    inputBinding:
      itemSeparator: ;;
      position: 14
      prefix: genome_resources__variation__cosmic=
      separate: false
    items: 'null'
    type: array
- id: reference__genome_context
  type:
    inputBinding:
      itemSeparator: ;;
      position: 15
      prefix: reference__genome_context=
      separate: false
    items:
      items: 'null'
      type: array
    type: array
- id: analysis
  type:
    inputBinding:
      itemSeparator: ;;
      position: 16
      prefix: analysis=
      separate: false
    items: string
    type: array
- id: config__algorithm__tools_on
  type:
    inputBinding:
      itemSeparator: ;;
      position: 17
      prefix: config__algorithm__tools_on=
      separate: false
    items:
      items: 'null'
      type: array
    type: array
- id: config__algorithm__variant_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 18
      prefix: config__algorithm__variant_regions=
      separate: false
    items:
    - File
    - 'null'
    type: array
- id: align_bam
  type:
    inputBinding:
      itemSeparator: ;;
      position: 19
      prefix: align_bam=
      separate: false
    items: File
    type: array
- id: regions__callable
  type:
    inputBinding:
      itemSeparator: ;;
      position: 20
      prefix: regions__callable=
      separate: false
    items: File
    type: array
- id: config__algorithm__callable_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 21
      prefix: config__algorithm__callable_regions=
      separate: false
    items: File
    type: array
- id: region_toolinput
  inputBinding:
    itemSeparator: ;;
    position: 22
    prefix: region=
    separate: false
  type: string
outputs:
- id: vrn_file_region
  secondaryFiles:
  - .tbi
  type: File
- id: region
  type: string