Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.set

Sets the value of the `SynchronizedRef`, serialized by the ref's semaphore.

**Signature**

```ts
declare const set: { <A>(value: A): (self: SynchronizedRef<A>) => Effect.Effect<void>; <A>(self: SynchronizedRef<A>, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L300)

Since v2.0.0