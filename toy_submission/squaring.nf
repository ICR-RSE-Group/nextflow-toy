#!/usr/bin/env nextflow

params.max_num = 40
params.outdir = "results"

process SPLITNUMS { 
    input: 
    val x 

    output: 
    path 'slurm_num*.txt' 

    script: 
    """
    split.py $x slurm ""
    """
} 

process SQUARENUM { 
    input: 
    path y 

    output: 
    path 'slurm_square*.txt' 

    script: 
    """
    square.py $y slurm ""
    """
}

process GATHERNUMS { 
    publishDir params.outdir, mode:'copy'
    input: 
    val x 
    path y

    output: 
    path 'slurm_total.txt' 

    script: 
    """
    gather.py $x slurm ""
    """
}

workflow { 
    nums_ch = SPLITNUMS(params.max_num) 
    square_ch = SQUARENUM(nums_ch.flatten()) 
    gather_ch = GATHERNUMS(params.max_num,square_ch.collect())     
} 