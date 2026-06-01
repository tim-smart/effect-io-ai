Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getAndUpdate

Updates the current value atomically with a function and returns the previous
value, serialized by the ref's semaphore.

**When to use**

Use to run a pure `SynchronizedRef` state update when the previous stored
value is also needed.

**See**

- `update` for updating without returning a value
- `updateAndGet` for updating and returning the new value
- `getAndUpdateEffect` for effectful updates that return the previous value

**Signature**

```ts
declare const getAndUpdate: { <A>(f: (a: A) => A): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, f: (a: A) => A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L178)

Since v2.0.0