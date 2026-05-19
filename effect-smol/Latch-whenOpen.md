Package: `effect`<br />
Module: `Latch`<br />

## Latch.whenOpen

Waits on the latch, then runs the provided effect.

If the latch is open, the effect runs immediately. If it is closed, the
returned effect suspends until the latch is opened or the current waiters are
released. The provided effect's success, failure, and requirements are
preserved.

**Signature**

```ts
declare const whenOpen: { (self: Latch): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Latch, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L233)

Since v4.0.0