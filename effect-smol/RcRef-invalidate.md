Package: `effect`<br />
Module: `RcRef`<br />

## RcRef.invalidate

Invalidates the currently cached resource, if one has been acquired.

**Details**

After invalidation, the next `get` acquires a fresh resource. If the current
resource is still referenced by active scopes, it remains usable until those
scopes close; otherwise it is closed immediately.

**Signature**

```ts
declare const invalidate: <A, E>(self: RcRef<A, E>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcRef.ts#L204)

Since v3.19.6