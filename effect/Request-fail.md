# fail

Complete a `Request` with the specified error.

To import and use `fail` from the "Request" module:

ts
import \* as Request from "effect/Request"
// Can be accessed like this
Request.fail
undefined

**Signature**

```ts
export declare const fail: {
  <A extends Request<any, any>>(error: Request.Error<A>): (self: A) => Effect.Effect<void>
  <A extends Request<any, any>>(self: A, error: Request.Error<A>): Effect.Effect<void>
}
```
