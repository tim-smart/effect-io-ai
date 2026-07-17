Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.isUninterruptibleForServer

Returns whether the `Uninterruptible` annotation applies to server-side
request handling for the provided context.

**Details**

Returns `true` only when `Uninterruptible` is `true` or `"server"`.

**See**

- `Uninterruptible` for the annotation values interpreted by this helper
- `isUninterruptibleForClient` for the client-side counterpart

**Signature**

```ts
declare const isUninterruptibleForServer: (context: Context.Context<never>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ClusterSchema.ts#L89)

Since v4.0.0