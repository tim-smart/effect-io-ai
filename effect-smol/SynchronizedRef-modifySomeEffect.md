Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.modifySomeEffect

Atomically runs an effectful modification while holding the ref's semaphore.
The effect computes a return value and an optional new ref value;
`Option.some` updates the ref and `Option.none` leaves it unchanged.

**Signature**

```ts
declare const modifySomeEffect: { <A, B, R, E>(fallback: B, pf: (a: A) => Effect.Effect<readonly [B, Option.Option<A>], E, R>): (self: SynchronizedRef<A>) => Effect.Effect<B, E, R>; <A, B, R, E>(self: SynchronizedRef<A>, pf: (a: A) => Effect.Effect<readonly [B, Option.Option<A>], E, R>): Effect.Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L265)

Since v2.0.0