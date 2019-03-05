
k logs auth-idp-mqzvg -n kube-system -c platform-auth-service

k exec auth-idp-mqzvg -n kube-system -c platform-auth-service -it -- /usr/bin/env bash
