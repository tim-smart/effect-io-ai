Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.resize

Adjusts the number of permits available in the semaphore.

**Signature**

```ts
declare const resize: { (permits: number): (self: Semaphore) => Effect.Effect<void>; (self: Semaphore, permits: number): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L279)

Since v4.0.0