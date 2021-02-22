cat version_list | while read v
do
curl -LO https://get.helm.sh/helm-$v-linux-amd64.tar.gz
tar -zxvf helm-$v-linux-amd64.tar.gz
rm -rf *gz
mv linux-amd64/helm /versions/helm-$v
rm -rf linux-amd64
done
