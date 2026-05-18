Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.Uninterruptible

Annotation that controls whether a cluster request is treated as
uninterruptible.

Use `true` for both client and server handling, `"client"` for client-side
handling only, `"server"` for server-side handling only, or `false` to allow
interruption.

**Signature**

```ts
declare const Uninterruptible: Context.Reference<boolean | "server" | "client">
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterSchema.ts#L72)

Since v4.0.0