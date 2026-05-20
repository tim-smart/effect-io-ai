Package: `effect`<br />
Module: `SynchronizedRef`<br />

## SynchronizedRef.getUnsafe

Reads the current value synchronously, bypassing the `Effect` API and the
ref's semaphore.

**Signature**

```ts
declare const getUnsafe: <A>(self: SynchronizedRef<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SynchronizedRef.ts#L91)

Since v4.0.0