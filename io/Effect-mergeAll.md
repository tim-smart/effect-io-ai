# mergeAll

Merges an `Iterable<Effect<R, E, A>>` to a single effect, working
sequentially.

To import and use `mergeAll` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.mergeAll
```

**Signature**

```ts
export declare const mergeAll: {
  <Z, A>(zero: Z, f: (z: Z, a: A) => Z): <R, E>(elements: Iterable<Effect<R, E, A>>) => Effect<R, E, Z>
  <R, E, Z, A>(elements: Iterable<Effect<R, E, A>>, zero: Z, f: (z: Z, a: A) => Z): Effect<R, E, Z>
}
```
