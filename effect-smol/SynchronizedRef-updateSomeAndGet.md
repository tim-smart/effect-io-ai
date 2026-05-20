Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.updateSomeAndGet

Applies a partial update and returns the resulting current value.
`Option.some` stores and returns the new value; `Option.none` returns the
unchanged value.

**Signature**

```ts
declare const updateSomeAndGet: { <A>(pf: (a: A) => Option.Option<A>): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, pf: (a: A) => Option.Option<A>): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L449)

Since v2.0.0