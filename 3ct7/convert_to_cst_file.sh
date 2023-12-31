#!/bin/tcsh

# This is a script to convert the contents of a log file generated by
# pre-relaxing the crystal structure of the wild-type species with
# the minimize_with_cst application into a set of Calpha distance
# restraints for use in the ddg_monomer application.  The script reads
# from a file and sends its output to standard-out.
#
# The first argument to this script should be the name of the log file.
# Its output should be redirected to text file.
# e.g.:
# ./convert_to_cst_file.sh cstmin.log > ca_dist_restraints.cst

grep ^apps.public.ddg.minimize_with_cst $1 | awk '{print "AtomPair CA "$7" CA "$9" HARMONIC "$11" "$14}'
