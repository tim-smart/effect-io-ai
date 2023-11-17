# catchAllCause

Recovers from all errors.

To import and use `catchAllCause` from the "Layer" module:

```ts
import * as Layer from "effect/Layer"
// Can be accessed like this
Layer.catchAllCause
```

**Signature**

```ts
export declare const catchAllCause: {
  <E, R2, E2, A2>(
    onError: (cause: Cause.Cause<E>) => Layer<R2, E2, A2>
  ): <R, A>(self: Layer<R, E, A>) => Layer<R2 | R, E2, A & A2>
  <R, E, A, R2, E2, A2>(
    self: Layer<R, E, A>,
    onError: (cause: Cause.Cause<E>) => Layer<R2, E2, A2>
  ): Layer<R | R2, E2, A & A2>
}
```
