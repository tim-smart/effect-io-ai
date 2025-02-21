# makeSemaphore

Creates a new semaphore with the specified number of permits.

**Details**

This function initializes a semaphore that controls concurrent access to a
shared resource. The number of permits determines how many tasks can access
the resource concurrently.

To import and use `makeSemaphore` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.makeSemaphore
```

**Example**

```ts
import { Effect } from "effect"

// Create a semaphore with 3 permits
const mutex = Effect.makeSemaphore(3)
```

**Signature**

```ts
export declare const makeSemaphore: (permits: number) => Effect<Semaphore>
```
