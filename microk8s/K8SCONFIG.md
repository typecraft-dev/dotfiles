# K8S Cluster Configuration Details
> [!IMPORTANT]
> The entire `microk8s/` folder and its contents only apply to the **nix server** and nothing else.

Generated on: Fri Jan 30 05:26:03 PM PST 2026

## Namespace: kube-system
### Pods
NAME                                      READY   STATUS    RESTARTS         AGE      IP           NODE   NOMINATED NODE   READINESS GATES
calico-node-bzpsd                         1/1     Running   8 (8m50s ago)    457d     10.0.0.250   k8s    <none>           <none>
calico-kube-controllers-b95c5dfcd-d496j   1/1     Running   8 (8m50s ago)    457d     10.1.77.14   k8s    <none>           <none>
hostpath-provisioner-58694c9f4b-rhjgj     1/1     Running   29 (8m50s ago)   2y156d   10.1.77.50   k8s    <none>           <none>
coredns-7745f9f87f-pwmw9                  1/1     Running   16 (8m50s ago)   2y156d   10.1.77.3    k8s    <none>           <none>

### Services
NAME       TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                  AGE
kube-dns   ClusterIP   10.152.183.10   <none>        53/UDP,53/TCP,9153/TCP   2y156d

### Deployments/StatefulSets/DaemonSets
NAME                                      READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/coredns                   1/1     1            1           2y156d
deployment.apps/calico-kube-controllers   1/1     1            1           2y156d
deployment.apps/hostpath-provisioner      1/1     1            1           2y156d

NAME                         DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR            AGE
daemonset.apps/calico-node   1         1         1       1            1           kubernetes.io/os=linux   2y156d

### Ingress
No resources found in kube-system namespace.

---
## Namespace: kube-public
### Pods
No resources found in kube-public namespace.

### Services
No resources found in kube-public namespace.

### Deployments/StatefulSets/DaemonSets
No resources found in kube-public namespace.

### Ingress
No resources found in kube-public namespace.

---
## Namespace: kube-node-lease
### Pods
No resources found in kube-node-lease namespace.

### Services
No resources found in kube-node-lease namespace.

### Deployments/StatefulSets/DaemonSets
No resources found in kube-node-lease namespace.

### Ingress
No resources found in kube-node-lease namespace.

---
## Namespace: default
### Pods
No resources found in default namespace.

### Services
NAME         TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE
kubernetes   ClusterIP   10.152.183.1   <none>        443/TCP   2y156d

### Deployments/StatefulSets/DaemonSets
No resources found in default namespace.

### Ingress
No resources found in default namespace.

---
## Namespace: ingress
### Pods
NAME                                      READY   STATUS    RESTARTS         AGE      IP          NODE   NOMINATED NODE   READINESS GATES
nginx-ingress-microk8s-controller-56k76   1/1     Running   18 (8m52s ago)   2y156d   10.1.77.6   k8s    <none>           <none>

### Services
No resources found in ingress namespace.

### Deployments/StatefulSets/DaemonSets
NAME                                               DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR   AGE
daemonset.apps/nginx-ingress-microk8s-controller   1         1         1       1            1           <none>          2y156d

### Ingress
No resources found in ingress namespace.

---
## Namespace: metallb-system
### Pods
NAME                          READY   STATUS      RESTARTS        AGE      IP           NODE   NOMINATED NODE   READINESS GATES
controller-8467d88d69-kq92f   0/1     Completed   6 (605d ago)    2y156d   <none>       k8s    <none>           <none>
speaker-r7pgz                 1/1     Running     8 (8m52s ago)   588d     10.0.0.250   k8s    <none>           <none>
controller-8467d88d69-9kmxw   1/1     Running     8 (8m52s ago)   602d     10.1.77.62   k8s    <none>           <none>

### Services
NAME              TYPE        CLUSTER-IP       EXTERNAL-IP   PORT(S)   AGE
webhook-service   ClusterIP   10.152.183.180   <none>        443/TCP   2y156d

### Deployments/StatefulSets/DaemonSets
NAME                         READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/controller   1/1     1            1           2y156d

NAME                     DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR            AGE
daemonset.apps/speaker   1         1         1       1            1           kubernetes.io/os=linux   2y156d

### Ingress
No resources found in metallb-system namespace.

---
## Namespace: cloudflare
### Pods
NAME                                      READY   STATUS    RESTARTS           AGE    IP           NODE   NOMINATED NODE   READINESS GATES
cloudflared-deployment-5db5b7d758-z8jnq   1/1     Running   1271 (7m43s ago)   580d   10.1.77.17   k8s    <none>           <none>
cloudflared-deployment-5db5b7d758-mqhvl   1/1     Running   1203 (7m42s ago)   580d   10.1.77.42   k8s    <none>           <none>

### Services
No resources found in cloudflare namespace.

### Deployments/StatefulSets/DaemonSets
NAME                                     READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/cloudflared-deployment   2/2     2            2           2y156d

### Ingress
No resources found in cloudflare namespace.

---
## Namespace: desktop
### Pods
NAME                              READY   STATUS                   RESTARTS   AGE    IP           NODE   NOMINATED NODE   READINESS GATES
ubuntu-desktop-66ff9c6cbc-krf5n   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-9tfzv   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-7wscr   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ssftd   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-7lmnr   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-qqmfr   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-xrq8z   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-jtgv4   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-jzpc8   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-rhdl5   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-5bfm9   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-hmhbs   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-f79w7   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-6p49r   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-kwmn2   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-m8d8f   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ggc22   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-4xp7h   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-b6tsc   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-jqh5n   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ffkmk   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-rgfxl   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-gf5np   0/1     ContainerStatusUnknown   1          580d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-wxzfs   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-g69zh   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-qfnfs   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-9vfd6   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-p4lxd   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-kbnf5   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-qcsz8   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-qss8n   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-mkg65   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-2qttr   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-bjvqs   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-q25pf   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-vtngc   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-npbbs   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-fczck   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-rcxwr   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-jfrcv   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-8jhsd   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-tmnds   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-9l7sl   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-f86bf   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-4qp6k   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-8z6h5   0/1     ContainerStatusUnknown   0          444d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-kf5zg   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-jx6vz   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-d2j45   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-dcqgl   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-v8jtf   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-2strj   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-4vmjh   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-dq2dl   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-vwf7x   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-9f8qm   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-t974t   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-95t8b   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-skkn8   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-58xnc   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-mqs5s   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-nc4dh   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ckbx7   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-rw8lm   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-94k24   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-xn5jg   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-2488s   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ztq2c   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-nbm5q   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-46jfb   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-rmklt   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-97tn9   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-87xcs   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-xj2rg   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-lx7cz   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ws2x5   0/1     ContainerStatusUnknown   0          224d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-lc9cd   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ccr59   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-n5k5d   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-xxlp5   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ghhpt   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-hjcg5   0/1     ContainerStatusUnknown   0          101d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-9m7s9   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-7m9q2   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-dlm78   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-fxcvw   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-flwtn   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-dmns2   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-rnqq7   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-99twb   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-pp6cw   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-zmzgd   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-649tz   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-jbn7m   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-mb2jq   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-smzdz   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-gckbf   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-8dn5p   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-sfm9b   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-gxsmt   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ddlbh   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-wnvhc   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-tnvrg   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-989ll   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-gqqpd   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-46gb4   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-hhqh9   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-65d4v   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-6nn68   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ffb89   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-xnkrf   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-5zhxv   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-5s9xr   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-bsdkq   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-th2bg   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-tswk8   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-45knx   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-jd256   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-52ncl   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-t5pft   0/1     ContainerStatusUnknown   0          183d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-8572x   0/1     ContainerStatusUnknown   0          154d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-8rbxc   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-jng6m   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-5cwpl   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-4chtg   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-zrxms   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-6dhqz   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-slhs9   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-rzgl9   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-4lm22   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-9btrf   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-vndzc   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-mrffv   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-5fmzn   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-zvwkn   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-b6ftf   0/1     ContainerStatusUnknown   0          119d   <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-fzbgb   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-wfgvd   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-m8hgz   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-pdxxg   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-js67s   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-7ntlw   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-m6dhn   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-m2hgx   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ttdm2   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-9k5m7   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-2h46h   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-fsx8z   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-z4lwp   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-4mdv5   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-ch8t4   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-vqxtx   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-q4s5d   0/1     ContainerStatusUnknown   0          93d    <none>       k8s    <none>           <none>
ubuntu-desktop-66ff9c6cbc-qr428   0/1     ImagePullBackOff         0          93d    10.1.77.25   k8s    <none>           <none>

### Services
NAME             TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
ubuntu-desktop   LoadBalancer   10.152.183.233   10.0.0.151    80:31873/TCP   2y156d

### Deployments/StatefulSets/DaemonSets
NAME                             READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/ubuntu-desktop   0/1     1            0           2y156d

### Ingress
No resources found in desktop namespace.

---
## Namespace: adguard
### Pods
NAME                            READY   STATUS                   RESTARTS        AGE     IP           NODE   NOMINATED NODE   READINESS GATES
adguard-home-66d5747c9b-fgfwq   0/1     ContainerStatusUnknown   1               600d    <none>       k8s    <none>           <none>
adguard-home-66d5747c9b-k6m2j   0/1     Completed                0               600d    <none>       k8s    <none>           <none>
adguard-home-66d5747c9b-xvgtf   0/1     Completed                3 (605d ago)    2y61d   <none>       k8s    <none>           <none>
adguard-home-66d5747c9b-x7kr9   0/1     Completed                0               603d    <none>       k8s    <none>           <none>
adguard-home-66d5747c9b-pl28z   0/1     Completed                0               602d    <none>       k8s    <none>           <none>
adguard-home-66d5747c9b-f6rd7   0/1     Completed                0               602d    <none>       k8s    <none>           <none>
adguard-home-66d5747c9b-t6nc2   0/1     Completed                0               600d    <none>       k8s    <none>           <none>
adguard-home-66d5747c9b-h4rjd   0/1     Completed                0               601d    <none>       k8s    <none>           <none>
adguard-home-66d5747c9b-k9n7l   1/1     Running                  8 (8m54s ago)   600d    10.1.77.26   k8s    <none>           <none>

### Services
NAME                   TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
adguard-home           LoadBalancer   10.152.183.66    10.0.0.152    3000:31367/TCP   2y151d
adguard-home-dns-tcp   LoadBalancer   10.152.183.18    10.0.0.153    53:30908/TCP     2y151d
adguard-home-dns-udp   LoadBalancer   10.152.183.144   10.0.0.154    53:30821/UDP     2y151d

### Deployments/StatefulSets/DaemonSets
NAME                           READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/adguard-home   1/1     1            1           2y151d

### Ingress
No resources found in adguard namespace.

---
## Namespace: speedtest
### Pods
NAME                                 READY   STATUS    RESTARTS        AGE    IP           NODE   NOMINATED NODE   READINESS GATES
db-6db47d4f9c-lw9rd                  1/1     Running   8 (8m54s ago)   587d   10.1.77.19   k8s    <none>           <none>
speedtest-tracker-7b7f4654df-vsz6f   1/1     Running   8 (8m54s ago)   587d   10.1.77.41   k8s    <none>           <none>

### Services
NAME                TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)                         AGE
speedtest-tracker   LoadBalancer   10.152.183.181   10.0.0.155    8080:32486/TCP,8443:32335/TCP   2y151d
db                  ClusterIP      10.152.183.25    <none>        5432/TCP                        2y151d

### Deployments/StatefulSets/DaemonSets
NAME                                READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/db                  1/1     1            1           2y151d
deployment.apps/speedtest-tracker   1/1     1            1           2y151d

### Ingress
No resources found in speedtest namespace.

---
## Namespace: cnpg-system
### Pods
No resources found in cnpg-system namespace.

### Services
No resources found in cnpg-system namespace.

### Deployments/StatefulSets/DaemonSets
No resources found in cnpg-system namespace.

### Ingress
No resources found in cnpg-system namespace.

---
## Namespace: tc-system
### Pods
No resources found in tc-system namespace.

### Services
No resources found in tc-system namespace.

### Deployments/StatefulSets/DaemonSets
No resources found in tc-system namespace.

### Ingress
No resources found in tc-system namespace.

---
## Namespace: home-media
### Pods
NAME                      READY   STATUS    RESTARTS        AGE   IP           NODE   NOMINATED NODE   READINESS GATES
ombi-59744d699b-qk6tk     1/1     Running   1 (8m55s ago)   72d   10.1.77.35   k8s    <none>           <none>
nzbget-b484d4c7-kbrzw     1/1     Running   1 (8m55s ago)   72d   10.1.77.40   k8s    <none>           <none>
sonarr-7dcb454b56-cxlxk   1/1     Running   1 (8m55s ago)   72d   10.1.77.55   k8s    <none>           <none>
radarr-c4cf69c64-cpqgs    1/1     Running   1 (8m55s ago)   72d   10.1.77.18   k8s    <none>           <none>

### Services
NAME     TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)                                                                                                                                        AGE
ombi     LoadBalancer   10.152.183.214   10.0.0.158    3579:30739/TCP                                                                                                                                 2y148d
sonarr   LoadBalancer   10.152.183.62    10.0.0.159    8989:32167/TCP                                                                                                                                 2y148d
radarr   LoadBalancer   10.152.183.158   10.0.0.160    7878:30254/TCP                                                                                                                                 2y148d
nzbget   LoadBalancer   10.152.183.197   10.0.0.161    6789:30269/TCP                                                                                                                                 2y148d
plex     LoadBalancer   10.152.183.112   10.0.0.162    32400:30479/TCP,3005:32646/TCP,8324:30680/TCP,32469:30030/TCP,1900:31549/UDP,32410:32689/UDP,32412:30895/UDP,32413:31771/UDP,32414:32241/UDP   2y148d

### Deployments/StatefulSets/DaemonSets
NAME                     READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/sonarr   1/1     1            1           2y148d
deployment.apps/radarr   1/1     1            1           2y148d
deployment.apps/ombi     1/1     1            1           2y148d
deployment.apps/nzbget   1/1     1            1           2y148d

### Ingress
No resources found in home-media namespace.

---
## Namespace: code
### Pods
NAME                           READY   STATUS                   RESTARTS        AGE    IP           NODE   NOMINATED NODE   READINESS GATES
code-server-574c4dd8b7-7m8bk   0/1     ContainerStatusUnknown   6 (177d ago)    387d   <none>       k8s    <none>           <none>
code-server-574c4dd8b7-kbjrr   1/1     Running                  2 (8m56s ago)   93d    10.1.77.56   k8s    <none>           <none>

### Services
NAME          TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)          AGE
code-server   LoadBalancer   10.152.183.129   10.0.0.150    8080:31852/TCP   2y142d

### Deployments/StatefulSets/DaemonSets
NAME                          READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/code-server   1/1     1            1           2y142d

### Ingress
No resources found in code namespace.

---
## Namespace: guacamole
### Pods
NAME                         READY   STATUS    RESTARTS        AGE    IP           NODE   NOMINATED NODE   READINESS GATES
guacd-58ddb975d6-h6zc5       1/1     Running   2 (8m56s ago)   174d   10.1.77.21   k8s    <none>           <none>
guacamole-656964895c-gws9m   1/1     Running   2 (8m56s ago)   169d   10.1.77.23   k8s    <none>           <none>

### Services
NAME        TYPE           CLUSTER-IP       EXTERNAL-IP   PORT(S)        AGE
guacd       ClusterIP      10.152.183.151   <none>        4822/TCP       174d
guacamole   LoadBalancer   10.152.183.105   10.0.0.157    80:31381/TCP   174d

### Deployments/StatefulSets/DaemonSets
NAME                        READY   UP-TO-DATE   AVAILABLE   AGE
deployment.apps/guacd       1/1     1            1           174d
deployment.apps/guacamole   1/1     1            1           174d

### Ingress
No resources found in guacamole namespace.

---
