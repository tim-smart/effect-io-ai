Package: `effect`<br />
Module: `Pool`<br />

## Pool.invalidate

Invalidates the specified item. This will cause the pool to eventually
reallocate the item, although this reallocation may occur lazily rather
than eagerly.

**Signature**

```ts
declare const invalidate: { <A>(item: A): <E>(self: Pool<A, E>) => Effect.Effect<void, never, Scope.Scope>; <A, E>(self: Pool<A, E>, item: A): Effect.Effect<void, never, Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pool.ts#L352)

Since v2.0.0