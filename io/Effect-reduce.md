# reduce

Folds an `Iterable<A>` using an effectual function f, working sequentially
from left to right.

To import and use `reduce` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.reduce
```

**Signature**

```ts
export declare const reduce: {
  <Z, A, R, E>(zero: Z, f: (z: Z, a: A) => Effect<R, E, Z>): (elements: Iterable<A>) => Effect<R, E, Z>
  <Z, A, R, E>(elements: Iterable<A>, zero: Z, f: (z: Z, a: A) => Effect<R, E, Z>): Effect<R, E, Z>
}
```
