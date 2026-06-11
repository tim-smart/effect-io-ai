Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.capacity

Gets the total capacity.

**When to use**

Use to inspect the fixed number of permits configured for the semaphore.

**Details**

Capacity is stored when the semaphore is created and does not change as
permits are acquired or released.

**See**

- `available` for the current number of free permits

**Signature**

```ts
declare const capacity: <K>(self: PartitionedSemaphore<K>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L372)

Since v4.0.0