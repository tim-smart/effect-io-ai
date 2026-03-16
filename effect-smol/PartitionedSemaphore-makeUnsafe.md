Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.makeUnsafe

Creates a `PartitionedSemaphore` unsafely.

**Signature**

```ts
declare const makeUnsafe: <K = unknown>(options: { readonly permits: number; }) => PartitionedSemaphore<K>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L58)

Since v4.0.0