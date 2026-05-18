Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.take

Returns an effect that acquires the requested number of permits for the
given partition key.

**Details**

If enough permits are available, the effect completes immediately. Otherwise
it waits until released permits are assigned to this partition. Requests for
more permits than the semaphore capacity never complete. Requests for zero
or a negative number of permits complete without acquiring anything.

**Signature**

```ts
declare const take: { <K>(key: K, permits: number): (self: PartitionedSemaphore<K>) => Effect.Effect<void>; <K>(self: PartitionedSemaphore<K>, key: K, permits: number): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L359)

Since v4.0.0