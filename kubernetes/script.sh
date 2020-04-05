#!/bin/bash
set -x 
export GITHUB_USER="zeineldin"

fluxctl install \
--git-path=kubernetes \
--git-user=${GITHUB_USER} \
--git-email=${GITHUB_USER}@user.noreply.github.com \
--git-url=git@github.com:${GITHUB_USER}/flux \
—-namespace=flux | kubectl apply -f - 

# Kubectl -n flux rollout status deployment/flux




