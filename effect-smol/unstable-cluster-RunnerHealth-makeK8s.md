Package: `effect`<br />
Module: `RunnerHealth`<br />

## RunnerHealth.makeK8s

Creates a `RunnerHealth` service that checks Kubernetes pod readiness for a
runner host, optionally scoped by namespace and label selector.

If the Kubernetes API check fails, the runner is treated as healthy.

**Signature**

```ts
declare const makeK8s: (options?: { readonly namespace?: string | undefined; readonly labelSelector?: string | undefined; } | undefined) => Effect.Effect<{ readonly isAlive: (address: RunnerAddress) => Effect.Effect<boolean>; }, never, K8s.K8sHttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RunnerHealth.ts#L110)

Since v4.0.0