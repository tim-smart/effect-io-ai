# reduceEffect

Reduces an `Iterable<Effect<R, E, A>>` to a single effect.

To import and use `reduceEffect` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.reduceEffect
```

**Signature**

```ts
export declare const reduceEffect: {
  <R, E, A>(
    zero: Effect<R, E, A>,
    f: (acc: A, a: A, i: number) => A,
    options?: { readonly concurrency?: Concurrency; readonly batched?: boolean }
  ): (elements: Iterable<Effect<R, E, A>>) => Effect<R, E, A>
  <R, E, A>(
    elements: Iterable<Effect<R, E, A>>,
    zero: Effect<R, E, A>,
    f: (acc: A, a: A, i: number) => A,
    options?: { readonly concurrency?: Concurrency; readonly batched?: boolean }
  ): Effect<R, E, A>
}
```
