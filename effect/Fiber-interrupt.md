Package: `effect`<br />
Module: `Fiber`<br />

## Fiber.interrupt

Interrupts the fiber from whichever fiber is calling this method. If the
fiber has already exited, the returned effect will resume immediately.
Otherwise, the effect will resume when the fiber exits.

**Signature**

```ts
declare const interrupt: <A, E>(self: Fiber<A, E>) => Effect.Effect<Exit.Exit<A, E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Fiber.ts#L451)

Since v2.0.0