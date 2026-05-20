Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.modifySome

Atomically computes a return value and an optional new ref value.
`Option.some` updates the ref; `Option.none` leaves it unchanged.

**Signature**

```ts
declare const modifySome: { <B, A>(pf: (a: A) => readonly [B, Option.Option<A>]): (self: SynchronizedRef<A>) => Effect.Effect<B>; <A, B>(self: SynchronizedRef<A>, pf: (a: A) => readonly [B, Option.Option<A>]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L243)

Since v2.0.0