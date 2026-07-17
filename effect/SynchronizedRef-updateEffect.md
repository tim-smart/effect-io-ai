Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateEffect

Runs an effectful update while holding the ref's semaphore and stores the new
value if the effect succeeds.

**When to use**

Use to run an effectful state transition on a `SynchronizedRef` when storing
the new value is the only result you need.

**See**

- `update` for a pure state transition
- `getAndUpdateEffect` for returning the previous stored value
- `updateAndGetEffect` for returning the new stored value
- `modifyEffect` for returning a separate result while storing a new value
- `updateSomeEffect` for effectfully applying only some state transitions

**Signature**

```ts
declare const updateEffect: { <A, R, E>(f: (a: A) => Effect.Effect<A, E, R>): (self: SynchronizedRef<A>) => Effect.Effect<void, E, R>; <A, R, E>(self: SynchronizedRef<A>, f: (a: A) => Effect.Effect<A, E, R>): Effect.Effect<void, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SynchronizedRef.ts#L485)

Since v2.0.0