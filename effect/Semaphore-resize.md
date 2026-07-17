Package: `effect`<br />
Module: `Semaphore`<br />

## Semaphore.resize

Sets the total number of permits managed by the semaphore.

**When to use**

Use to change the concurrency limit of an existing semaphore while keeping
current acquisitions in place.

**Details**

Existing acquisitions remain taken after resizing. If the new total is less
than the currently taken permit count, new acquisitions wait until enough
permits are released.

**See**

- `make` for creating a semaphore with an initial permit count
- `release` for returning permits without changing semaphore capacity

**Signature**

```ts
declare const resize: { (permits: number): (self: Semaphore) => Effect.Effect<void>; (self: Semaphore, permits: number): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Semaphore.ts#L351)

Since v4.0.0