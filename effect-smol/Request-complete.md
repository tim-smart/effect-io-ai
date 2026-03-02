Package: `effect`<br />
Module: `Request`<br />

## Request.complete

Completes a request entry with the provided result. This is typically used
within RequestResolver implementations to fulfill pending requests.

**Signature**

```ts
declare const complete: { <A extends Any>(result: Result<A>): (self: Entry<A>) => Effect.Effect<void>; <A extends Any>(self: Entry<A>, result: Result<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L360)

Since v2.0.0