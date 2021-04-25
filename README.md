kubeset
===

동일한 User name을 사용하는 다양한 Kubernetes Cluster를 사용하는데 어려움이 있어 개발한 bash script입니다.  
여러 클러스터를 동시에 운영해야 한다면 kubeconfig 파일을 깨끗하게 보관하고 바꿔가며 운영 할 수 있다.  




# 사용법
* ${HOME}/.kube/conf 파일 삭제 또는 이름변경
* ${HOME}/.kube 아래 kubeconfig 파일을 .kubeconfig 확장자로 저장


# 설명
* .kubeconfig 파일 중 선택된 파일을 .kube/config 파일로 link를 걸어주는 방법입니다
* kubeset 파일을 실행 폴더에 넣고 kubeset 명령을 넣으면 변경 할 kubeconfig 메뉴를 보여준다.
* 메뉴의 숫자를 입력하면 kubectl 명령을 통해 클러스터를 관리 할 수 있다.


# Change Log
* first commit
* add SHELL command at the last line to enter new console
* change logic to make config from env

---
Kubeset
===
A bash script developed because of the difficulty of using various Kubernetes Clusters that use the same User name.  
If you need to run multiple clusters at the same time, kubeconfig files can be kept clean, changed, and operated.  


# Usage
* The simple way that it makes symbolic link .kube/config from one of .kubeconfig files
* Type kubeset in command prompt. it makes a menu with kubeconfig files

