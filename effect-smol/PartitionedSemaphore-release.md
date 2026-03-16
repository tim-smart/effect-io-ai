Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.release

Releases permits back to the shared pool.

**Signature**

```ts
declare const release: { (permits: number): <K>(self: PartitionedSemaphore<K>) => Effect.Effect<number>; <K>(self: PartitionedSemaphore<K>, permits: number): Effect.Effect<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L288)

Since v4.0.0