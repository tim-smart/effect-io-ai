# makeSemaphore

Creates a new Semaphore

To import and use `makeSemaphore` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.makeSemaphore
```

**Signature**

```ts
export declare const makeSemaphore: (permits: number) => Effect<never, never, Semaphore>
```
