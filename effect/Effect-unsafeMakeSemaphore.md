# unsafeMakeSemaphore

Unsafely creates a new Semaphore

To import and use `unsafeMakeSemaphore` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.unsafeMakeSemaphore
```

**Signature**

```ts
export declare const unsafeMakeSemaphore: (permits: number) => Semaphore
```
