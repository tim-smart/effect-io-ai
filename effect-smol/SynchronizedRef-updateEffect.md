Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateEffect

Runs an effectful update while holding the ref's semaphore and stores the new
value if the effect succeeds.

**Signature**

```ts
declare const updateEffect: { <A, R, E>(f: (a: A) => Effect.Effect<A, E, R>): (self: SynchronizedRef<A>) => Effect.Effect<void, E, R>; <A, R, E>(self: SynchronizedRef<A>, f: (a: A) => Effect.Effect<A, E, R>): Effect.Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L347)

Since v2.0.0