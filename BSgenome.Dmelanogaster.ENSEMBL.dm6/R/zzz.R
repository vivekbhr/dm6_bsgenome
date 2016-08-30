###
###

.pkgname <- "BSgenome.Dmelanogaster.ENSEMBL.dm6"

.seqnames <- NULL

.circ_seqs <- "chrM"

.mseqnames <- NULL

.onLoad <- function(libname, pkgname)
{
    if (pkgname != .pkgname)
        stop("package name (", pkgname, ") is not ",
             "the expected name (", .pkgname, ")")
    extdata_dirpath <- system.file("extdata", package=pkgname,
                                   lib.loc=libname, mustWork=TRUE)

    ## Make and export BSgenome object.
    bsgenome <- BSgenome(
        organism="Drosophila melanogaster",
        common_name="Fly",
        provider="ENSEMBL",
        provider_version="dm6",
        release_date="Aug. 2014",
        release_name="BDGP Release 6 + ISO1 MT",
        source_url="ftp://ftp.ensembl.org/pub/release-79/fasta/drosophila_melanogaster/dna/",
        seqnames=.seqnames,
        circ_seqs=.circ_seqs,
        mseqnames=.mseqnames,
        seqs_pkgname=pkgname,
        seqs_dirpath=extdata_dirpath
    )

    ns <- asNamespace(pkgname)

    objname <- pkgname
    assign(objname, bsgenome, envir=ns)
    namespaceExport(ns, objname)

    old_objname <- "Dmelanogaster"
    assign(old_objname, bsgenome, envir=ns)
    namespaceExport(ns, old_objname)
}

