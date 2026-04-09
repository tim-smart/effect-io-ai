Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.WithTransaction

Whether to wrap the request with a storage transaction, so sql queries are
committed atomically.

**Signature**

```ts
declare const WithTransaction: Context.Reference<boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterSchema.ts#L25)

Since v4.0.0