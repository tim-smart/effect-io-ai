Package: `effect`<br />
Module: `Effect`<br />

## Effect.makeSemaphore

Creates a new semaphore with the specified number of permits.

**Details**

This function initializes a semaphore that controls concurrent access to a
shared resource. The number of permits determines how many tasks can access
the resource concurrently.

**Example**

```ts
import { Effect } from "effect"

// Create a semaphore with 3 permits
const mutex = Effect.makeSemaphore(3)
```

**Signature**

```ts
declare const makeSemaphore: (permits: number) => Effect<Semaphore>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L11820)

Since v2.0.0