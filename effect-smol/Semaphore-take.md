Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.take

Acquires the specified number of permits and returns the acquired permit
count.

**When to use**

Use when you need manual permit acquisition for a lower-level protocol with
explicit acquisition and release control.

**Details**

The effect waits until enough permits are available.

**See**

- `withPermit` for automatically acquiring and releasing one permit around an effect
- `withPermits` for automatically acquiring and releasing multiple permits around an effect
- `release` for returning manually acquired permits

**Signature**

```ts
declare const take: { (permits: number): (self: Semaphore) => Effect.Effect<number>; (self: Semaphore, permits: number): Effect.Effect<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L464)

Since v4.0.0