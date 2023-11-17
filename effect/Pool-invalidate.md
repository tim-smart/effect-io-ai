# invalidate

Invalidates the specified item. This will cause the pool to eventually
reallocate the item, although this reallocation may occur lazily rather
than eagerly.

To import and use `invalidate` from the "Pool" module:

```ts
import * as Pool from "effect/Pool"
// Can be accessed like this
Pool.invalidate
```

**Signature**

```ts
export declare const invalidate: {
  <A>(value: A): <E>(self: Pool<E, A>) => Effect.Effect<Scope.Scope, never, void>
  <E, A>(self: Pool<E, A>, value: A): Effect.Effect<Scope.Scope, never, void>
}
```
