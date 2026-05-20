Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getAndUpdateEffect

Atomically runs an effectful update while holding the ref's semaphore, sets
the new value if the effect succeeds, and returns the previous value.

**Signature**

```ts
declare const getAndUpdateEffect: { <A, R, E>(f: (a: A) => Effect.Effect<A, E, R>): (self: SynchronizedRef<A>) => Effect.Effect<A, E, R>; <A, R, E>(self: SynchronizedRef<A>, f: (a: A) => Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L140)

Since v2.0.0