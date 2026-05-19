Package: `effect`<br />
Module: `Request`<br />

## Request.succeed

Completes a request entry successfully with the supplied value.

**Signature**

```ts
declare const succeed: { <A extends Any>(value: Success<A>): (self: Entry<A>) => Effect.Effect<void>; <A extends Any>(self: Entry<A>, value: Success<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L485)

Since v2.0.0