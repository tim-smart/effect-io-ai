# invalidate

Invalidates the specified item. This will cause the pool to eventually
reallocate the item, although this reallocation may occur lazily rather
than eagerly.

To import and use `invalidate` from the "KeyedPool" module:

```ts
import * as KeyedPool from '@effect/io/KeyedPool'

// Can be accessed like this
KeyedPool.invalidate
```

**Signature**

```ts
export declare const invalidate: {
  <A>(item: A): <K, E>(self: KeyedPool<K, E, A>) => Effect.Effect<never, never, void>
  <K, E, A>(self: KeyedPool<K, E, A>, item: A): Effect.Effect<never, never, void>
}
```
