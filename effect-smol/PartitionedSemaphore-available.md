Package: `effect`<br />
Module: `PartitionedSemaphore`<br />

## PartitionedSemaphore.available

Gets the current number of available permits.

**When to use**

Use to inspect a snapshot of how many permits are currently free.

**Details**

Running the returned effect reads the semaphore's current availability.
Taking permits decreases availability, and releasing permits can increase it
up to the semaphore capacity.

**Gotchas**

Reading availability does not reserve permits.

**See**

- `capacity` for the fixed total permit capacity
- `release` for returning permits to the shared pool
- `withPermitsIfAvailable` for running only when permits are immediately available

**Signature**

```ts
declare const available: <K>(self: PartitionedSemaphore<K>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/PartitionedSemaphore.ts#L385)

Since v4.0.0