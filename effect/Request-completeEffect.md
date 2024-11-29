# completeEffect

Complete a `Request` with the specified effectful computation, failing the
request with the error from the effect workflow if it fails, and completing
the request with the value of the effect workflow if it succeeds.

To import and use `completeEffect` from the "Request" module:

ts
import \* as Request from "effect/Request"
// Can be accessed like this
Request.completeEffect
undefined

**Signature**

```ts
export declare const completeEffect: {
  <A extends Request<any, any>, R>(
    effect: Effect.Effect<Request.Success<A>, Request.Error<A>, R>
  ): (self: A) => Effect.Effect<void, never, R>
  <A extends Request<any, any>, R>(
    self: A,
    effect: Effect.Effect<Request.Success<A>, Request.Error<A>, R>
  ): Effect.Effect<void, never, R>
}
```
