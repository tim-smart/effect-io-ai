Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.release

Releases the specified number of permits and returns the resulting available
permits.

**When to use**

Use to manually return permits acquired with `take` when a lower-level
permit protocol needs explicit release control.

**Details**

Running the effect releases the requested permits, wakes waiting acquirers
when permits become available, and returns the current available permit
count.

**Gotchas**

Manual `take` / `release` usage must keep permit counts balanced. Prefer
`withPermit` or `withPermits` when the acquisition can be scoped to one
effect.

**See**

- `take` for manually acquiring permits
- `releaseAll` for returning every currently taken permit
- `withPermits` for automatic acquire and release around an effect

**Signature**

```ts
declare const release: { (permits: number): (self: Semaphore) => Effect.Effect<number>; (self: Semaphore, permits: number): Effect.Effect<number>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Semaphore.ts#L519)

Since v4.0.0