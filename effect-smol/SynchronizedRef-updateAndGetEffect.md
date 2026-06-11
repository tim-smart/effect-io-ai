Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateAndGetEffect

Runs an effectful update while holding the ref's semaphore, stores the new
value if the effect succeeds, and returns that new value.

**When to use**

Use to run an effectful `SynchronizedRef` state transition and return the new
stored value.

**See**

- `updateEffect` for effectful updates without returning the new value
- `updateAndGet` for the pure variant

**Signature**

```ts
declare const updateAndGetEffect: { <A, R, E>(f: (a: A) => Effect.Effect<A, E, R>): (self: SynchronizedRef<A>) => Effect.Effect<A, E, R>; <A, R, E>(self: SynchronizedRef<A>, f: (a: A) => Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L538)

Since v2.0.0