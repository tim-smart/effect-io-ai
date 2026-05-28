Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.modifySomeEffect

Runs an effectful modification atomically while holding the ref's semaphore.
The effect computes a return value and an optional new ref value;
`Option.some` updates the ref and `Option.none` leaves it unchanged.

**When to use**

Use to effectfully compute a return value while optionally updating the
stored value.

**See**

- `modifySome` for the pure variant
- `updateSomeEffect` for effectful optional updates without a separate return value

**Signature**

```ts
declare const modifySomeEffect: { <A, B, R, E>(fallback: B, pf: (a: A) => Effect.Effect<readonly [B, Option.Option<A>], E, R>): (self: SynchronizedRef<A>) => Effect.Effect<B, E, R>; <A, B, R, E>(self: SynchronizedRef<A>, pf: (a: A) => Effect.Effect<readonly [B, Option.Option<A>], E, R>): Effect.Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L376)

Since v2.0.0