Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.modifyEffect

Atomically runs an effectful modification while holding the ref's semaphore,
stores the new value if the effect succeeds, and returns the computed result.

**Signature**

```ts
declare const modifyEffect: { <A, B, E, R>(f: (a: A) => Effect.Effect<readonly [B, A], E, R>): (self: SynchronizedRef<A>) => Effect.Effect<B, E, R>; <A, B, E, R>(self: SynchronizedRef<A>, f: (a: A) => Effect.Effect<readonly [B, A], E, R>): Effect.Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L219)

Since v2.0.0