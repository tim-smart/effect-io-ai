# completeEffect

Complete a `Request` with the specified effectful computation, failing the
request with the error from the effect workflow if it fails, and completing
the request with the value of the effect workflow if it succeeds.

Part of the `Request` module, imported from `@effect/io/Request`.

**Signature**

```ts
export declare const completeEffect: {
  <A extends Request<any, any>, R>(effect: Effect.Effect<R, Request.Error<A>, Request.Success<A>>): (
    self: A
  ) => Effect.Effect<R, never, void>
  <A extends Request<any, any>, R>(
    self: A,
    effect: Effect.Effect<R, Request.Error<A>, Request.Success<A>>
  ): Effect.Effect<R, never, void>
}
```
