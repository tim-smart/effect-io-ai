# succeed

Complete a `Request` with the specified value.

To import and use `succeed` from the "Request" module:

```ts
import * as Request from "effect/Request"
// Can be accessed like this
Request.succeed
```

**Signature**

```ts
export declare const succeed: {
  <A extends Request<any, any>>(value: Request.Success<A>): (self: A) => Effect.Effect<void>
  <A extends Request<any, any>>(self: A, value: Request.Success<A>): Effect.Effect<void>
}
```
