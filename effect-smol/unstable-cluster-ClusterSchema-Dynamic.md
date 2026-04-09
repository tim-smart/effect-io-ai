Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.Dynamic

Dynamically transform the request annotations based on the request.
This only applies to the requests handled by the Entity, not the client.

**Signature**

```ts
declare const Dynamic: Context.Reference<(annotations: Context.Context<never>, request: Request<Rpc.AnyWithProps>) => Context.Context<never>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterSchema.ts#L81)

Since v4.0.0