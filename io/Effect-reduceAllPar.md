# reduceAllPar

Reduces an `Iterable<Effect<R, E, A>>` to a single effect, working in
parallel.

To import and use `reduceAllPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.reduceAllPar
```

**Signature**

```ts
export declare const reduceAllPar: {
  <R, E, A>(zero: Effect<R, E, A>, f: (acc: A, a: A) => A): (elements: Iterable<Effect<R, E, A>>) => Effect<R, E, A>
  <R, E, A>(elements: Iterable<Effect<R, E, A>>, zero: Effect<R, E, A>, f: (acc: A, a: A) => A): Effect<R, E, A>
}
```
