Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.get

Returns an `Effect` that reads the current value of the `SynchronizedRef`.

**Signature**

```ts
declare const get: <A>(self: SynchronizedRef<A>) => Effect.Effect<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L99)

Since v2.0.0