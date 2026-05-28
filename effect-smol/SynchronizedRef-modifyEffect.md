Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.modifyEffect

Runs an effectful modification atomically while holding the ref's semaphore,
stores the new value if the effect succeeds, and returns the computed result.

**When to use**

Use to effectfully compute both a separate return value and the next stored
value in one serialized update.

**See**

- `modify` for the pure variant
- `updateEffect` for effectfully storing a new value without a separate result

**Signature**

```ts
declare const modifyEffect: { <A, B, E, R>(f: (a: A) => Effect.Effect<readonly [B, A], E, R>): (self: SynchronizedRef<A>) => Effect.Effect<B, E, R>; <A, B, E, R>(self: SynchronizedRef<A>, f: (a: A) => Effect.Effect<readonly [B, A], E, R>): Effect.Effect<B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L315)

Since v2.0.0