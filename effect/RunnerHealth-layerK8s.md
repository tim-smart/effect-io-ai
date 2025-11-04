Package: `@effect/cluster`<br />
Module: `RunnerHealth`<br />

## RunnerHealth.layerK8s

A layer which will check the Kubernetes API to see if a Runner is healthy.

The provided HttpClient will need to add the pod's CA certificate to its
trusted root certificates in order to communicate with the Kubernetes API.

The pod service account will also need to have permissions to list pods in
order to use this layer.

**Signature**

```ts
declare const layerK8s: (options?: { readonly namespace?: string | undefined; readonly labelSelector?: string | undefined; } | undefined) => Layer.Layer<RunnerHealth, never, HttpClient.HttpClient | FileSystem.FileSystem>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RunnerHealth.ts#L183)

Since v1.0.0