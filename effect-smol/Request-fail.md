Package: `effect`<br />
Module: `Request`<br />

## Request.fail

Completes a request entry with a typed failure.

**Signature**

```ts
declare const fail: { <A extends Any>(error: Error<A>): (self: Entry<A>) => Effect.Effect<void>; <A extends Any>(self: Entry<A>, error: Error<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L450)

Since v2.0.0