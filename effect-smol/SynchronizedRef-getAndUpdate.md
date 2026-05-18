Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getAndUpdate

Atomically updates the current value with a function and returns the previous
value, serialized by the ref's semaphore.

**Signature**

```ts
declare const getAndUpdate: { <A>(f: (a: A) => A): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, f: (a: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L122)

Since v2.0.0