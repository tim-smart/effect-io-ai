Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.releaseAll

Releases all permits held by this semaphore and returns the resulting
available permits.

**When to use**

Use to return every currently taken permit to a semaphore at once, typically
during cleanup of manual `take` / `release` protocols.

**See**

- `release` for releasing a known permit count
- `withPermits` for automatic acquire and release around an effect

**Signature**

```ts
declare const releaseAll: (self: Semaphore) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Semaphore.ts#L517)

Since v4.0.0