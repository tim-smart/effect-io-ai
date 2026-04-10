Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.releaseAll

Releases all permits held by this semaphore and returns the resulting
available permits.

**Signature**

```ts
declare const releaseAll: (self: Semaphore) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L364)

Since v4.0.0