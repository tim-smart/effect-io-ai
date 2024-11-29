# matchCause

Handles failures by matching the cause of failure.

The `matchCause` function allows you to handle failures with access to
the full cause of the failure within a fiber. This is useful for
differentiating between different types of errors, such as regular failures,
defects, or interruptions. You can provide specific handling logic for each
failure type based on the cause.

To import and use `matchCause` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.matchCause
undefined

**Signature**

```ts
export declare const matchCause: {
  <E, A2, A, A3>(options: {
    readonly onFailure: (cause: Cause.Cause<E>) => A2
    readonly onSuccess: (a: A) => A3
  }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, never, R>
  <A, E, R, A2, A3>(
    self: Effect<A, E, R>,
    options: { readonly onFailure: (cause: Cause.Cause<E>) => A2; readonly onSuccess: (a: A) => A3 }
  ): Effect<A2 | A3, never, R>
}
```
