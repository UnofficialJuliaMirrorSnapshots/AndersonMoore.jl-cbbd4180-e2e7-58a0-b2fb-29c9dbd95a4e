__precompile__()

module AndersonMoore
# http://www.stochasticlifestyle.com/finalizing-julia-package-documentation-testing-coverage-publishing/

using Compat
using Compat.LinearAlgebra

# Walk through all the directories in src and add the files
# If you add/remove/rename a directory, mirror the change here
dirs = ["AndersonMoore", "gensys", "sparseAim", "util"]
for dir in dirs
    for (root, _, files) in walkdir(joinpath(dirname(@__FILE__), dir))
        for file in files
            include(joinpath(root, file))
        end
    end
end
    
# Export all functions
export exactShift!, numericShift!, shiftRight!, buildA!, augmentQ!, eigenSys!, reducedForm,
AndersonMooreAlg, sameSpan, deleteCols, deleteRows, loadSparseAim, callSparseAim, checkAM, err, gensysToAMA

end # module
