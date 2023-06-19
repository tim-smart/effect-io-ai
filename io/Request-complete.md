# complete

Complete a `Request` with the specified result.

Part of the `Request` module, imported from `@effect/io/Request`.

**Signature**

```ts
export declare const complete: {
  <A extends Request<any, any>>(result: Request.Result<A>): (self: A) => Effect.Effect<never, never, void>
  <A extends Request<any, any>>(self: A, result: Request.Result<A>): Effect.Effect<never, never, void>
}
```
