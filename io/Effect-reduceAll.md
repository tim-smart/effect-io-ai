# reduceAll

Reduces an `Iterable<Effect<R, E, A>>` to a single effect, working
sequentially.

To import and use `reduceAll` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.reduceAll
```

**Signature**

```ts
export declare const reduceAll: {
  <R, E, A>(zero: Effect<R, E, A>, f: (acc: A, a: A) => A): (elements: Iterable<Effect<R, E, A>>) => Effect<R, E, A>
  <R, E, A>(elements: Iterable<Effect<R, E, A>>, zero: Effect<R, E, A>, f: (acc: A, a: A) => A): Effect<R, E, A>
}
```
