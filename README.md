kubeset
===

동일한 User name을 사용하는 다양한 Kubernetes Cluster를 사용하는데 어려움이 있어 개발한 bash script입니다.

# 사용법
* ${HOME}/.kube/conf 파일 삭제 또는 이름변경
* ${HOME}/.kube 아래 kubeconfig 파일을 .kubeconfig 확장자로 저장


# 설명
* .kubeconfig 파일 중 선택된 파일을 .kube/config 파일로 link를 걸어주는 방법입니다


# Change Log
* first commit
* add SHELL command at the last line to enter new console
* change logic to make config from env
