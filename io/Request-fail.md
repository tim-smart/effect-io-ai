# fail

Complete a `Request` with the specified error.

Part of the `Request` module, imported from `@effect/io/Request`.

**Signature**

```ts
export declare const fail: {
  <A extends Request<any, any>>(error: Request.Error<A>): (self: A) => Effect.Effect<never, never, void>
  <A extends Request<any, any>>(self: A, error: Request.Error<A>): Effect.Effect<never, never, void>
}
```
