# succeed

Complete a `Request` with the specified value.

Part of the `Request` module, imported from `@effect/io/Request`.

**Signature**

```ts
export declare const succeed: {
  <A extends Request<any, any>>(value: Request.Success<A>): (self: A) => Effect.Effect<never, never, void>
  <A extends Request<any, any>>(self: A, value: Request.Success<A>): Effect.Effect<never, never, void>
}
```
