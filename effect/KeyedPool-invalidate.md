# invalidate

Invalidates the specified item. This will cause the pool to eventually
reallocate the item, although this reallocation may occur lazily rather
than eagerly.

To import and use `invalidate` from the "KeyedPool" module:

ts
import \* as KeyedPool from "effect/KeyedPool"
// Can be accessed like this
KeyedPool.invalidate
undefined

**Signature**

```ts
export declare const invalidate: {
  <A>(item: A): <K, E>(self: KeyedPool<K, A, E>) => Effect.Effect<void>
  <K, A, E>(self: KeyedPool<K, A, E>, item: A): Effect.Effect<void>
}
```
