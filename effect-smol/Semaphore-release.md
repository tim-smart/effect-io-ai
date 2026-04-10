Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.release

Releases the specified number of permits and returns the resulting available
permits.

**Signature**

```ts
declare const release: { (permits: number): (self: Semaphore) => Effect.Effect<number>; (self: Semaphore, permits: number): Effect.Effect<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L352)

Since v4.0.0