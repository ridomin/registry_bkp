for f in "$@"
do
    if [ $f != model-index.json ]
    then
        dtdl2-validator $f local
    fi
done