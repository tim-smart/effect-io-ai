Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.available

Gets the current number of available permits.

**Signature**

```ts
declare const available: <K>(self: PartitionedSemaphore<K>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L261)

Since v4.0.0