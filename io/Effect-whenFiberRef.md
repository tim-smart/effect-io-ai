# whenFiberRef

Executes this workflow when value of the specified `FiberRef` satisfies the
predicate.

To import and use `whenFiberRef` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.whenFiberRef
```

**Signature**

```ts
export declare const whenFiberRef: {
  <S>(fiberRef: FiberRef.FiberRef<S>, predicate: Predicate<S>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R, E, [S, Option.Option<A>]>
  <R, E, A, S>(self: Effect<R, E, A>, fiberRef: FiberRef.FiberRef<S>, predicate: Predicate<S>): Effect<
    R,
    E,
    [S, Option.Option<A>]
  >
}
```
