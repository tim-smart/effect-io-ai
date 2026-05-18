Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.update

Updates the value of the `SynchronizedRef` with a function, serialized by the
ref's semaphore.

**Signature**

```ts
declare const update: { <A>(f: (a: A) => A): (self: SynchronizedRef<A>) => Effect.Effect<void>; <A>(self: SynchronizedRef<A>, f: (a: A) => A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L329)

Since v2.0.0