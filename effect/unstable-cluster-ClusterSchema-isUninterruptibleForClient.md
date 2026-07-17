Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.isUninterruptibleForClient

Returns whether the `Uninterruptible` annotation applies to client-side
request handling for the provided context.

**When to use**

Use when you need client-side cluster request handling to decide whether to
ignore an interrupt.

**Details**

Returns `true` when `Uninterruptible` is `true` or `"client"`, and `false`
for `"server"` or the default `false`.

**See**

- `Uninterruptible` for the annotation values interpreted by this helper
- `isUninterruptibleForServer` for the server-side counterpart

**Signature**

```ts
declare const isUninterruptibleForClient: (context: Context.Context<never>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ClusterSchema.ts#L114)

Since v4.0.0