apiVersion: kubeadm.k8s.io/v1beta1
kind: MasterConfiguration
networking:
  podSubnet: K8SHA_CIDR
apiServer:
  CertSANs:
    - K8SHA_HOSTNAME1
    - K8SHA_HOSTNAME2
    - K8SHA_HOSTNAME3
    - K8SHA_IP1
    - K8SHA_IP2
    - K8SHA_IP3
    - K8SHA_IPVIRTUAL
    - 127.0.0.1
  extraArgs:
    advertise-address: K8SHA_IPVIRTUAL
    apiserver-count: "3"
controlPlaneEndpoint: K8SHA_IPVIRTUAL
etcd:
  external:
    endpoints:
    - http://K8SHA_IP1:2379
    - http://K8SHA_IP2:2379
    - http://K8SHA_IP3:2379
