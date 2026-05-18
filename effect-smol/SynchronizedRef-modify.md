Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.modify

Atomically computes a return value and a new ref value, stores the new value,
and returns the computed result.

**Signature**

```ts
declare const modify: { <A, B>(f: (a: A) => readonly [B, A]): (self: SynchronizedRef<A>) => Effect.Effect<B>; <A, B>(self: SynchronizedRef<A>, f: (a: A) => readonly [B, A]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L203)

Since v2.0.0