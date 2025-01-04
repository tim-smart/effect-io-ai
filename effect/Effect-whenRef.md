# whenRef

Executes an effect conditionally based on the value of a `Ref` that satisfies
a predicate.

**Details**

This function allows you to execute an effect only when the value of a
specified `Ref` meets a condition defined by a predicate. If the value
satisfies the predicate, the effect is executed, and the result is wrapped in
an `Option.some`. If the predicate is not satisfied, the effect is skipped,
and the result is `Option.none`. In both cases, the current value of the
`Ref` is included in the result.

To import and use `whenRef` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.whenRef
```

**Signature**

```ts
export declare const whenRef: {
  <S>(ref: Ref.Ref<S>, predicate: Predicate<S>): <A, E, R>(self: Effect<A, E, R>) => Effect<[S, Option.Option<A>], E, R>
  <A, E, R, S>(self: Effect<A, E, R>, ref: Ref.Ref<S>, predicate: Predicate<S>): Effect<[S, Option.Option<A>], E, R>
}
```
