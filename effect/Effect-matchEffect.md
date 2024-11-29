# matchEffect

Handles both success and failure cases of an effect, allowing for additional
side effects.

The `matchEffect` function is similar to {@link match}, but it
enables you to perform side effects in the handlers for both success and
failure outcomes. This is useful when you need to execute additional actions,
like logging or notifying users, based on whether an effect succeeds or
fails.

To import and use `matchEffect` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.matchEffect
undefined

**Signature**

```ts
export declare const matchEffect: {
  <E, A2, E2, R2, A, A3, E3, R3>(options: {
    readonly onFailure: (e: E) => Effect<A2, E2, R2>
    readonly onSuccess: (a: A) => Effect<A3, E3, R3>
  }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, E2 | E3, R2 | R3 | R>
  <A, E, R, A2, E2, R2, A3, E3, R3>(
    self: Effect<A, E, R>,
    options: { readonly onFailure: (e: E) => Effect<A2, E2, R2>; readonly onSuccess: (a: A) => Effect<A3, E3, R3> }
  ): Effect<A2 | A3, E2 | E3, R2 | R3 | R>
}
```
