$namespaces:
  dx: https://www.dnanexus.com/cwl#
arguments:
- position: 0
  valueFrom: sentinel_runtime=cores,$(runtime['cores']),ram,$(runtime['ram'])
- sentinel_parallel=multi-combined
- sentinel_outputs=sv__calls,svvalidate__grading_summary,svvalidate__grading_plots
- sentinel_inputs=sv_rec:record
- run_number=0
baseCommand:
- bcbio_nextgen.py
- runfn
- summarize_sv
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: DockerRequirement
  dockerImageId: quay.io/bcbio/bcbio-vc
  dockerPull: quay.io/bcbio/bcbio-vc
- class: ResourceRequirement
  coresMin: 1
  outdirMin: 14312
  ramMin: 3584
  tmpdirMin: 6644
- class: dx:InputResourceRequirement
  indirMin: 3085
inputs:
- id: sv_rec
  type:
    items:
      items:
        fields:
        - name: sv__variantcaller
          type:
          - string
          - 'null'
        - name: sv__vrn_file
          type:
          - File
          - 'null'
        - name: svvalidate__summary
          type:
          - File
          - 'null'
        - name: resources
          type: string
        - name: description
          type: string
        - name: genome_build
          type: string
        - name: config__algorithm__tools_off
          type:
          - 'null'
          - string
          - items:
            - 'null'
            - string
            type: array
        - name: analysis
          type: string
        - name: config__algorithm__tools_on
          type:
          - 'null'
          - string
          - items:
            - 'null'
            - string
            type: array
        - name: config__algorithm__svvalidate
          type: File
        - name: genome_resources__aliases__snpeff
          type: string
        - name: regions__sample_callable
          type:
          - File
          - 'null'
        - name: depth__bins__normalized
          type:
          - File
          - 'null'
        - name: depth__bins__background
          type:
          - File
          - 'null'
        - name: depth__bins__target
          type:
          - File
          - 'null'
        - name: depth__bins__antitarget
          type:
          - File
          - 'null'
        - name: regions__bins__target
          type:
          - File
          - 'null'
        - name: regions__bins__antitarget
          type:
          - File
          - 'null'
        - name: regions__bins__group
          type:
          - string
          - 'null'
        - name: reference__fasta__base
          type: File
        - name: metadata__phenotype
          type: string
        - name: config__algorithm__svcaller
          type: string
        - name: config__algorithm__coverage_interval
          type:
          - string
          - 'null'
        - name: genome_resources__rnaseq__gene_bed
          type: File
        - name: genome_resources__variation__encode_blacklist
          type: File
        - name: metadata__batch
          type:
          - 'null'
          - string
        - name: genome_resources__variation__lcr
          type: File
        - name: genome_resources__variation__polyx
          type: File
        - name: config__algorithm__variant_regions
          type:
          - File
          - 'null'
        - name: config__algorithm__exclude_regions
          type:
          - 'null'
          - string
          - items:
            - 'null'
            - string
            type: array
        - name: config__algorithm__variant_regions_merged
          type:
          - File
          - 'null'
        - name: depth__variant_regions__regions
          type:
          - File
          - 'null'
        - name: config__algorithm__callable_regions
          type: File
        name: sv_rec
        type: record
      type: array
    type: array
outputs:
- id: sv__calls
  type:
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
- id: svvalidate__grading_summary
  type:
    items:
    - File
    - 'null'
    type: array
- id: svvalidate__grading_plots
  type:
    items:
      items:
      - File
      - 'null'
      type: array
    type: array
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: $(JSON.stringify(inputs))
    entryname: cwl.inputs.json
