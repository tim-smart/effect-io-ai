Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.Dynamic

Context reference for deriving request annotations from a cluster request.

**When to use**

Use to customize server-side request annotations based on the decoded
request value.

**Gotchas**

This only applies to requests handled by the entity, not to the generated
client.

**Signature**

```ts
declare const Dynamic: Context.Reference<(annotations: Context.Context<never>, request: Request<Rpc.AnyWithProps>) => Context.Context<never>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterSchema.ts#L165)

Since v4.0.0