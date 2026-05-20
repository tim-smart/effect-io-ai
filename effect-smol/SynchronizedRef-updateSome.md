Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateSome

Applies a partial update to the current value. `Option.some` stores the new
value; `Option.none` leaves the ref unchanged.

**Signature**

```ts
declare const updateSome: { <A>(f: (a: A) => Option.Option<A>): (self: SynchronizedRef<A>) => Effect.Effect<void>; <A>(self: SynchronizedRef<A>, f: (a: A) => Option.Option<A>): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L406)

Since v2.0.0