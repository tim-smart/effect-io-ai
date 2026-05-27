Package: `effect`<br />
Module: `Pool`<br />

## Pool.invalidate

Invalidates the specified item so the pool can remove it and reallocate the
item, lazily if needed.

**When to use**

Use to prevent a pooled item from being reused after you determine it is no
longer suitable, such as a stale connection or a resource that failed a
health check.

**Gotchas**

The item is matched with strict equality. Passing an equivalent but different
object instance does nothing.

**See**

- `get` for retrieving scoped items from the pool

**Signature**

```ts
declare const invalidate: { <A>(item: A): <E>(self: Pool<A, E>) => Effect.Effect<void, never, Scope.Scope>; <A, E>(self: Pool<A, E>, item: A): Effect.Effect<void, never, Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L547)

Since v2.0.0