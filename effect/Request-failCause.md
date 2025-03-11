## failCause

Complete a `Request` with the specified cause.

**Signature**

```ts
declare const failCause: { <A extends Request<any, any>>(cause: Cause<Request.Error<A>>): (self: A) => Effect.Effect<void>; <A extends Request<any, any>>(self: A, cause: Cause<Request.Error<A>>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L229)

Since v2.0.0