Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getAndSet

Atomically sets a new value and returns the previous value, serialized by the
ref's semaphore.

**Signature**

```ts
declare const getAndSet: { <A>(value: A): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, value: A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L108)

Since v2.0.0