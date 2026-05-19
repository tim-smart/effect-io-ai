Package: `effect`<br />
Module: `Request`<br />

## Request.completeEffect

Completes a request entry with the result of an effect.

**Details**

If the effect succeeds, the entry is completed successfully with its value.
If the effect fails, the entry is completed with that failure. The returned
effect itself does not fail with the request error.

**Signature**

```ts
declare const completeEffect: { <A extends Any, R>(effect: Effect.Effect<Success<A>, Error<A>, R>): (self: Entry<A>) => Effect.Effect<void, never, R>; <A extends Any, R>(self: Entry<A>, effect: Effect.Effect<Success<A>, Error<A>, R>): Effect.Effect<void, never, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Request.ts#L433)

Since v2.0.0