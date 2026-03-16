Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.take

Acquires the specified number of permits and returns the resulting available
permits, suspending the task if they are not yet available.

**Signature**

```ts
declare const take: { (permits: number): (self: Semaphore) => Effect.Effect<number>; (self: Semaphore, permits: number): Effect.Effect<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L342)

Since v4.0.0