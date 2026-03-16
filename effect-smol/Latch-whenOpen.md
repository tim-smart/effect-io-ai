Package: `effect`<br />
Module: `Latch`<br />

## Latch.whenOpen

Runs the given effect only when the latch is open.

**Signature**

```ts
declare const whenOpen: { (self: Latch): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Latch, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L172)

Since v4.0.0