Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.make

Creates a `PartitionedSemaphore`.

**Signature**

```ts
declare const make: <K = unknown>(options: { readonly permits: number; }) => Effect.Effect<PartitionedSemaphore<K>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L251)

Since v4.0.0