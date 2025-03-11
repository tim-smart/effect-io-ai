## fail

Complete a `Request` with the specified error.

**Signature**

```ts
declare const fail: { <A extends Request<any, any>>(error: Request.Error<A>): (self: A) => Effect.Effect<void>; <A extends Request<any, any>>(self: A, error: Request.Error<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L218)

Since v2.0.0