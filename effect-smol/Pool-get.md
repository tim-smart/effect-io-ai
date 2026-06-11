Package: `effect`<br />
Module: `Pool`<br />

## Pool.get

Retrieves an item from the pool in a scoped effect.

**When to use**

Use to borrow a pooled resource for the lifetime of the current scope so it
is automatically returned when that scope closes.

**Details**

The returned effect waits for an available item when the pool is at capacity.
If acquiring a new item fails, the effect fails with the acquisition error.

**Gotchas**

Retrying a failed `get` can repeat the acquisition attempt.

**See**

- `invalidate` for removing an unhealthy item from future reuse

**Signature**

```ts
declare const get: <A, E>(self: Pool<A, E>) => Effect.Effect<A, E, Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L421)

Since v2.0.0