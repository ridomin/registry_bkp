for f in models/*/*.json
do
    dtdl2-validator $f
done