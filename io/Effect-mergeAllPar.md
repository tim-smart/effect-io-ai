# mergeAllPar

Merges an `Iterable<Effect<R, E, A>>` to a single effect, working in
parallel.

Due to the parallel nature of this combinator, `f` must be both:

- commutative: `f(a, b) == f(b, a)`
- associative: `f(a, f(b, c)) == f(f(a, b), c)`

It's unsafe to execute side effects inside `f`, as `f` may be executed
more than once for some of `in` elements during effect execution.

To import and use `mergeAllPar` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.mergeAllPar
```

**Signature**

```ts
export declare const mergeAllPar: {
  <R, E, A, Z>(elements: Iterable<Effect<R, E, A>>, zero: Z, f: (z: Z, a: A) => Z): Effect<R, E, Z>
  <Z, A>(zero: Z, f: (z: Z, a: A) => Z): <R, E>(elements: Iterable<Effect<R, E, A>>) => Effect<R, E, Z>
}
```