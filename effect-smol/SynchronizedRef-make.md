Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.make

Creates a `SynchronizedRef` from an initial value, wrapped in an `Effect`.

**Signature**

```ts
declare const make: <A>(value: A) => Effect.Effect<SynchronizedRef<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L80)

Since v2.0.0