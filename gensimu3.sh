
make
make -f makefileshell


mkdir $1
cp -r bin $1
cp -r input $1
mkdir $1/src
cp src/*.bmp $1/src
cp script3.sh $1

mkdir $1/output
mkdir $1/stats
mkdir $1/images
