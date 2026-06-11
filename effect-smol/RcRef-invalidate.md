Package: `effect`<br />
Module: `RcRef`<br />

## RcRef.invalidate

Invalidates the currently cached resource, if one has been acquired.

**When to use**

Use to force future `RcRef.get` calls to acquire a fresh resource when the
currently cached resource should no longer be reused.

**Details**

After invalidation, the next `get` acquires a fresh resource.

**Gotchas**

Invalidation does not revoke resources already borrowed by active scopes;
those remain usable until their scopes close.

**See**

- `get` for acquiring the current cached resource or the fresh resource after invalidation

**Signature**

```ts
declare const invalidate: <A, E>(self: RcRef<A, E>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RcRef.ts#L225)

Since v3.19.6