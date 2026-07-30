Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.await

Awaits the fiber, which suspends the awaiting fiber until the result of the
fiber has been determined.

**Signature**

```ts
declare const await: <A, E>(self: Fiber<A, E>) => Effect.Effect<Exit.Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L345)

Since v2.0.0