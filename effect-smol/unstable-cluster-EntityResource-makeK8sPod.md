Package: `effect`<br />
Module: `EntityResource`<br />

## EntityResource.makeK8sPod

Creates an `EntityResource` backed by a Kubernetes Pod.

**Details**

The pod is created and waited on through `K8sHttpClient`, and is kept alive
until the resource is closed or its idle time to live expires.

**Signature**

```ts
declare const makeK8sPod: (spec: v1.Pod, options?: { readonly idleTimeToLive?: Duration.Input | undefined; } | undefined) => Effect.Effect<EntityResource<K8sHttpClient.PodStatus>, never, Scope.Scope | Sharding | Entity.CurrentAddress | K8sHttpClient.K8sHttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EntityResource.ts#L163)

Since v4.0.0