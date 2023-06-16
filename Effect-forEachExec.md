# forEachExec

Applies the function `f` to each element of the `Collection<A>` and returns
the result in a new `Arrat<B>` using the specified execution strategy.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
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
