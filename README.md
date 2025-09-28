# [`kustomize`](https://kustomize.io/)

## Example

```bash
bash make.app.sh [ up | down ]
```
    .
    ├── base
    │   ├── deployment.yaml
    │   └── kustomization.yaml
    ├── overlays
    │   └── production
    │       ├── deployment-patch.yaml
    │       └── kustomization.yaml
    ├── README.md
    └── make.app.sh
    
    4 directories, 6 files
    

