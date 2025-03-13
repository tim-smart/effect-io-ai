Package: `effect`<br />
Module: `Request`<br />

## Request.succeed

Complete a `Request` with the specified value.

**Signature**

```ts
declare const succeed: { <A extends Request<any, any>>(value: Request.Success<A>): (self: A) => Effect.Effect<void>; <A extends Request<any, any>>(self: A, value: Request.Success<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Request.ts#L240)

Since v2.0.0