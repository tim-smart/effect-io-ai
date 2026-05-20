Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.isUninterruptibleForClient

Returns whether the `Uninterruptible` annotation applies to client-side
request handling for the provided context.

**Signature**

```ts
declare const isUninterruptibleForClient: (context: Context.Context<never>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterSchema.ts#L100)

Since v4.0.0