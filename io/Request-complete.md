# complete

Complete a `Request` with the specified result.

To import and use `complete` from the "Request" module:

```ts
import * as Request from '@effect/io/Request'

// Can be accessed like this
Request.complete
```

**Signature**

```ts
export declare const complete: {
  <A extends Request<any, any>>(result: Request.Result<A>): (self: A) => Effect.Effect<never, never, void>
  <A extends Request<any, any>>(self: A, result: Request.Result<A>): Effect.Effect<never, never, void>
}
```
