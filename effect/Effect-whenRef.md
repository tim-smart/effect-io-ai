# whenRef

Executes this workflow when the value of the `Ref` satisfies the predicate.

To import and use `whenRef` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.whenRef
```

**Signature**

```ts
export declare const whenRef: {
  <S>(ref: Ref.Ref<S>, predicate: Predicate<S>): <R, E, A>(
    self: Effect<R, E, A>
  ) => Effect<R, E, readonly [S, Option.Option<A>]>
  <R, E, A, S>(self: Effect<R, E, A>, ref: Ref.Ref<S>, predicate: Predicate<S>): Effect<
    R,
    E,
    readonly [S, Option.Option<A>]
  >
}
```
