Package: `effect`<br />
Module: `RunnerHealth`<br />

## RunnerHealth.layerK8s

A layer which checks Kubernetes pod readiness to determine whether a runner is
healthy.

**Details**

The provided `HttpClient` must trust the pod CA certificate and the pod service
account must be allowed to list pods.

**Gotchas**

If the Kubernetes API check fails, the runner is treated as healthy.

**Signature**

```ts
declare const layerK8s: (options?: { readonly namespace?: string | undefined; readonly labelSelector?: string | undefined; } | undefined) => Layer.Layer<RunnerHealth, never, K8s.K8sHttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerHealth.ts#L164)

Since v4.0.0