# allowInterrupt

This function checks if any fibers are attempting to interrupt the current
fiber, and if so, performs self-interruption.

Note that this allows for interruption to occur in uninterruptible regions.

To import and use `allowInterrupt` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.allowInterrupt
```

**Signature**

```ts
export declare const allowInterrupt: Effect<never, never, void>
```
