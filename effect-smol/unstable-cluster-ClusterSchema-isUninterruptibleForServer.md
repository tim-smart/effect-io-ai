Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.isUninterruptibleForServer

Returns whether the `Uninterruptible` annotation applies to server-side
request handling for the provided context.

**Signature**

```ts
declare const isUninterruptibleForServer: (context: Context.Context<never>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterSchema.ts#L88)

Since v4.0.0