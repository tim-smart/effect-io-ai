Package: `effect`<br />
Module: `ClusterSchema`<br />

## ClusterSchema.isUninterruptibleForClient

Returns whether the `Uninterruptible` annotation applies to client-side
request handling for the provided context.

**When to use**

Use when client-side cluster request handling needs to decide whether an
interrupt should be ignored.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterSchema.ts#L152)

Since v4.0.0