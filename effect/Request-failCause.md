# failCause

Complete a `Request` with the specified cause.

To import and use `failCause` from the "Request" module:

ts
import \* as Request from "effect/Request"
// Can be accessed like this
Request.failCause
undefined

**Signature**

```ts
export declare const failCause: {
  <A extends Request<any, any>>(cause: Cause<Request.Error<A>>): (self: A) => Effect.Effect<void>
  <A extends Request<any, any>>(self: A, cause: Cause<Request.Error<A>>): Effect.Effect<void>
}
```
