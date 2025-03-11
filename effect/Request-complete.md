## complete

Complete a `Request` with the specified result.

**Signature**

```ts
declare const complete: { <A extends Request<any, any>>(result: Request.Result<A>): (self: A) => Effect.Effect<void>; <A extends Request<any, any>>(self: A, result: Request.Result<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L178)

Since v2.0.0