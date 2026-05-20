Package: `effect`<br />
Module: `K8sHttpClient`<br />

## K8sHttpClient.makeGetPods

Creates a cached effect that fetches running Kubernetes pods.

**Details**

The request can be limited by namespace and label selector, and the result is a
map keyed by pod IP address.

**Signature**

```ts
declare const makeGetPods: (options?: { readonly namespace?: string | undefined; readonly labelSelector?: string | undefined; } | undefined) => Effect.Effect<Effect.Effect<Map<string, Pod>, HttpClientError.HttpClientError | Schema.SchemaError, never>, never, K8sHttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/K8sHttpClient.ts#L93)

Since v4.0.0