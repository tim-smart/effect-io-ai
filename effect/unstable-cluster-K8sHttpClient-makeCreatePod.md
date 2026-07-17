Package: `effect`<br />
Module: `K8sHttpClient`<br />

## K8sHttpClient.makeCreatePod

Creates a scoped function that ensures a Kubernetes pod exists and waits until
it is ready.

**Details**

The pod defaults to the `default` namespace and is deleted when the surrounding
scope closes.

**Signature**

```ts
declare const makeCreatePod: Effect.Effect<(spec: v1.Pod) => Effect.Effect<PodStatus, never, Scope>, never, K8sHttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/K8sHttpClient.ts#L129)

Since v4.0.0