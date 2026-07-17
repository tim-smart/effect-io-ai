Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.modifySome

Computes a return value and an optional new ref value atomically.
`Option.some` updates the ref; `Option.none` leaves it unchanged.

**When to use**

Use to compute a return value while optionally updating a `SynchronizedRef`
under its semaphore.

**See**

- `modify` for always storing a new value
- `updateSome` for optional updates without a separate return value

**Signature**

```ts
declare const modifySome: { <B, A>(pf: (a: A) => readonly [B, Option.Option<A>]): (self: SynchronizedRef<A>) => Effect.Effect<B>; <A, B>(self: SynchronizedRef<A>, pf: (a: A) => readonly [B, Option.Option<A>]): Effect.Effect<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SynchronizedRef.ts#L336)

Since v2.0.0