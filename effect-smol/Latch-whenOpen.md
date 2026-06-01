Package: `effect`<br />
Module: `Latch`<br />

## Latch.whenOpen

Waits on the latch, then runs the provided effect.

**When to use**

Use to gate another effect so it starts only after the latch is opened or
the current waiters are released.

**Details**

If the latch is open, the effect runs immediately. If it is closed, the
returned effect suspends until the latch is opened or the current waiters are
released. The provided effect's success, failure, and requirements are
preserved.

**See**

- `await` for waiting without running another effect
- `open` for opening the latch for current and future waiters
- `release` for resuming current waiters without opening the latch

**Signature**

```ts
declare const whenOpen: { (self: Latch): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>; <A, E, R>(self: Latch, effect: Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Latch.ts#L389)

Since v4.0.0