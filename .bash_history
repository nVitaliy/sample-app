gcloud compute zones list
gcloud services enable deploymentmanager.googleapis.com sqladmin.googleapis.com iam.googleapis.com cloudresourcemanager.googleapis.com runtimeconfig.googleapis.com
nslookup vitaliinedbaliuk
nslookup teamcity.vnm.zone.com
gcloud deployment-manager deployments create teamcity-server --template https://raw.githubusercontent.com/JetBrains/teamcity-google-template/master/teamcity.jinja --properties zone:europe-west3,ipAddress:169.254.169.254,domainName:teamcity.vnm.zone.com,domainOwnerEmail:vnedbabliuk@gmail.com
gcloud deployment-manager deployments create teamcity-server2 --template https://raw.githubusercontent.com/JetBrains/teamcity-google-template/master/teamcity.jinja --properties zone:europe-west3,ipAddress:169.254.169.254,domainName:teamcity.vnm.zone.com,domainOwnerEmail:vnedbabliuk@gmail.com
gcloud projects add-iam-policy-binding $(gcloud config get-value project) --member serviceAccount:$(gcloud projects describe $(gcloud config get-value project) --format="value(projectNumber)")@cloudservices.gserviceaccount.com --role roles/owner
gcloud services enable deploymentmanager.googleapis.com sqladmin.googleapis.com iam.googleapis.com cloudresourcemanager.googleapis.com runtimeconfig.googleapis.com
gcloud compute zones list
gcloud deployment-manager deployments create teamcity --template https://raw.githubusercontent.com/JetBrains/teamcity-google-template/master/teamcity.jinja --properties zone:europe-west3-a
gcloud deployment-manager deployments create teamcity2 --template https://raw.githubusercontent.com/JetBrains/teamcity-google-template/master/teamcity.jinja --properties zone:europe-west3-a
gcloud config set compute/zone europe-west3-a
git clone https://github.com/GoogleCloudPlatform/continuous-deployment-on-kubernetes.git
cd continuous-deployment-on-kubernetes
gcloud container clusters create jenkins-cd   --machine-type n1-standard-2 --num-nodes 2   --scopes "https://www.googleapis.com/auth/projecthosting,cloud-platform"
gcloud container clusters list
kubectl cluster-info
cd ..
ls
'wget https://storage.googleapis.com/kubernetes-helm/helm-v2.14.1-linux-amd64.tar.gz
exit
q
tar zxfv helm-v2.14.1-linux-amd64.tar.gz
:q
X
:exti
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.14.1-linux-amd64.tar.gz
tar zxfv helm-v2.14.1-linux-amd64.tar.gz
ls
rm helm-v2.14.1-linux-amd64.tar.gz
cp linux-amd64/helm .
ls
kubectl create clusterrolebinding cluster-admin-binding --clusterrole=cluster-admin         --user=$(gcloud config get-value account)
kubectl create serviceaccount tiller --namespace kube-system
kubectl create clusterrolebinding tiller-admin-binding --clusterrole=cluster-admin     --serviceaccount=kube-system:tiller
./helm init --service-account=tiller
./helm repo update
./helm version
./helm install -n cd stable/jenkins -f jenkins/values.yaml --version 1.2.2 --wait
ls
cd continuous-deployment-on-kubernetes/
ls
./helm install -n cd stable/jenkins -f jenkins/values.yaml --version 1.2.2 --wait
ls
cd jenkins/
ls
./helm install -n cd stable/jenkins -f jenkins/values.yaml --version 1.2.2 --wait
cd
ls
./helm install -n cd continuous-deployment-on-kubernetes/jenkins -f jenkins/values.yaml --version 1.2.2 --wait
./helm install -n cd stable/jenkins -f continuous-deployment-on-kubernetes/jenkins/values.yaml --version 1.2.2 --wait
kubectl get pods
export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/component=jenkins-master" -l "app.kubernetes.io/instance=cd" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME 8080:8080 >> /dev/null &
kubectl get svc
printf $(kubectl get secret cd-jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo
git clone https://github.com/GoogleCloudPlatform/continuous-deployment-on-kubernetes
cd continuous-deployment-on-kubernetes/sample-app
kubectl create clusterrolebinding jenkins-deploy     --clusterrole=cluster-admin --serviceaccount=default:cd-jenkins
kubectl create ns production
kubectl --namespace=production apply -f k8s/production
kubectl --namespace=production apply -f k8s/canary
kubectl --namespace=production scale deployment gceme-frontend-production --replicas=4
kubectl --namespace=production get service gceme-frontend
kubectl --namespace=production get service gceme-frontend-production
kubctl get services
kubectl get services
kubectl get deploments
kubectl get deployments
kubectl --namespace=production get deployments
kubectl --namespace=production get service gceme-frontendgceme-frontend
kubectl --namespace=production get services
kubectl --namespace=production apply -f k8s/services
kubectl --namespace=production get service gceme-frontend
gcloud zone list
gcloud compute zones list
gcloud config set compute/zone europe-west3-a
git clone https://github.com/GoogleCloudPlatform/continuous-deployment-on-kubernetes.git
ls
rm continuous-deployment-on-kubernetes/
sudo rm -r -f continuous-deployment-on-kubernetes/
ls
gcloud config set project training-project-v4
clear
ls
rm helm
ls
cd linux-amd64/
ls
cd
ls
sudo rm -r -f linux-amd64/
vim README-cloudshell.txt 
gcloud config set compute/zone europe-west3-a
git clone https://github.com/GoogleCloudPlatform/continuous-deployment-on-kubernetes.git
ls
cd continuous-deployment-on-kubernetes/
ls
gcloud config set compute/zone europe-west3-a
git clone https://github.com/GoogleCloudPlatform/continuous-deployment-on-kubernetes.git
cd continuous-deployment-on-kubernetes
gcloud container clusters create jenkins-cd   --machine-type n1-standard-2 --num-nodes 2   --scopes "https://www.googleapis.com/auth/projecthosting,cloud-platform"
gcloud container clusters create jenkins-cd --machine-type n1-standard-2 --num-nodes 2 --scopes "https://www.googleapis.com/auth/projecthosting,cloud-platform"
cd ..
ls
gcloud container clusters create jenkins-cd --machine-type n1-standard-2 --num-nodes 2 --scopes "https://www.googleapis.com/auth/projecthosting,cloud-platform"
gcloud container clusters list
gcloud container clusters create jenkins-cd --machine-type n1-standard-2 --num-nodes 2 --scopes "https://www.googleapis.com/auth/projecthosting,cloud-platform"
gcloud container clusters list
kubectl cluster-info
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.14.1-linux-amd64.tar.gz
tar zxfv helm-v2.14.1-linux-amd64.tar.gz
cp linux-amd64/helm .
ls
cd ..
ls
cd lost+found/
ls
cd lost+found/
cd vnedbaliuk/
ls
rm helm-v2.14.1-linux-amd64.tar.gz
ls
kubectl create clusterrolebinding cluster-admin-binding --clusterrole=cluster-admin         --user=$(gcloud config get-value account)
kubectl create serviceaccount tiller --namespace kube-system
kubectl create clusterrolebinding tiller-admin-binding --clusterrole=cluster-admin     --serviceaccount=kube-system:tiller
./helm init --service-account=tiller
./helm repo update
./helm version
./helm install -n cd stable/jenkins -f jenkins/values.yaml --version 1.2.2 --wait
cd
ls
cd continuous-deployment-on-kubernetes/
ls
cd
ls
./helm install -n cd continuous-deployment-on-kubernetes/jenkins -f jenkins/values.yaml --version 1.2.2 --wait
cd continuous-deployment-on-kubernetes/
ls
cd jenkins/
ls
cd
./helm install --help
cd continuous-deployment-on-kubernetes/
ls
./helm install -n cd stable/jenkins -f jenkins/values.yaml --version 1.2.2 --wait
cd
ls
rm helm 
ls
cd continuous-deployment-on-kubernetes/
ls
wget https://storage.googleapis.com/kubernetes-helm/helm-v2.14.1-linux-amd64.tar.gz
tar zxfv helm-v2.14.1-linux-amd64.tar.gz
cp linux-amd64/helm .
kubectl create clusterrolebinding cluster-admin-binding --clusterrole=cluster-admin         --user=$(gcloud config get-value account)
kubectl create serviceaccount tiller --namespace kube-system
kubectl create clusterrolebinding tiller-admin-binding --clusterrole=cluster-admin     --serviceaccount=kube-system:tiller
./helm init --service-account=tiller
./helm repo update
./helm version
./helm install -n cd stable/jenkins -f jenkins/values.yaml --version 1.2.2 --wait
export POD_NAME=$(kubectl get pods --namespace default -l "app.kubernetes.io/component=jenkins-master" -l "app.kubernetes.io/instance=cd" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME 8080:8080 >> /dev/null &
kubectl get svc
printf $(kubectl get secret cd-jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode);echo
ls
cd continuous-deployment-on-kubernetes/
ls
rm helm-v2.14.1-linux-amd64.tar.gz 
ls
cd
rm linux-amd64/
rm -r linux-amd64/
ls
git clone https://github.com/GoogleCloudPlatform/continuous-deployment-on-kubernetes
cd continuous-deployment-on-kubernetes/sample-app
kubectl create clusterrolebinding jenkins-deploy     --clusterrole=cluster-admin --serviceaccount=default:cd-jenkins
kubectl create ns production
kubectl --namespace=production apply -f k8s/production
kubectl --namespace=production apply -f k8s/canary
kubectl --namespace=production apply -f k8s/services
kubectl --namespace=production scale deployment gceme-frontend-production --replicas=4
kubectl --namespace=production get service gceme-frontend
export FRONTEND_SERVICE_IP=$(kubectl get -o jsonpath="{.status.loadBalancer.ingress[0].ip}"  --namespace=production services gceme-frontend)
gcloud source repos create gceme
git init
git config credential.helper gcloud.sh
export PROJECT_ID=$(gcloud config get-value project)
git remote add origin https://source.developers.google.com/p/$PROJECT_ID/r/gceme
git config --global user.email "vnedbaliuk@gmail.com"
git config --global user.name "vnedbaliuk"
