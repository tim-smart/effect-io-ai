# forEachExec

Applies the function `f` to each element of the `Collection<A>` and returns
the result in a new `Arrat<B>` using the specified execution strategy.

To import and use `forEachExec` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.forEachExec
```

**Signature**

```ts
export declare const forEachExec: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>, strategy: ExecutionStrategy.ExecutionStrategy): (
    elements: Iterable<A>
  ) => Effect<R, E, B[]>
  <R, E, A, B>(
    elements: Iterable<A>,
    f: (a: A) => Effect<R, E, B>,
    strategy: ExecutionStrategy.ExecutionStrategy
  ): Effect<R, E, B[]>
}
```
