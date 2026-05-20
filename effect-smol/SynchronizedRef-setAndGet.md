Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.setAndGet

Sets the value of the `SynchronizedRef` and returns the new value.

**Signature**

```ts
declare const setAndGet: { <A>(value: A): (self: SynchronizedRef<A>) => Effect.Effect<A>; <A>(self: SynchronizedRef<A>, value: A): Effect.Effect<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L315)

Since v2.0.0