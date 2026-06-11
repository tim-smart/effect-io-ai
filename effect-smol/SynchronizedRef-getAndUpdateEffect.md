Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getAndUpdateEffect

Runs an effectful update atomically while holding the ref's semaphore, sets
the new value if the effect succeeds, and returns the previous value.

**When to use**

Use when you need an effectful `SynchronizedRef` state transition to return
the previous stored value.

**See**

- `getAndUpdate` for pure updates that return the previous value
- `updateEffect` for effectful updates without returning a value
- `updateAndGetEffect` for effectful updates that return the new value
- `modifyEffect` for effectful updates with a custom return value
- `getAndUpdateSomeEffect` for conditional effectful updates that return the previous value

**Signature**

```ts
declare const getAndUpdateEffect: { <A, R, E>(f: (a: A) => Effect.Effect<A, E, R>): (self: SynchronizedRef<A>) => Effect.Effect<A, E, R>; <A, R, E>(self: SynchronizedRef<A>, f: (a: A) => Effect.Effect<A, E, R>): Effect.Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L192)

Since v2.0.0