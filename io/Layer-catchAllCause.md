# catchAllCause

Recovers from all errors.

Part of the `Layer` module, imported from `@effect/io/Layer`.

**Signature**

```ts
export declare const catchAllCause: {
  <E, R2, E2, A2>(onError: (cause: Cause.Cause<E>) => Layer<R2, E2, A2>): <R, A>(
    self: Layer<R, E, A>
  ) => Layer<R2 | R, E2, A & A2>
  <R, E, A, R2, E2, A2>(self: Layer<R, E, A>, onError: (cause: Cause.Cause<E>) => Layer<R2, E2, A2>): Layer<
    R | R2,
    E2,
    A & A2
  >
}
```
