# allowInterrupt

Allows interruption of the current fiber, even in uninterruptible regions.

**Details**

This effect checks whether any other fibers are attempting to interrupt the
current fiber. If so, it allows the current fiber to perform a
self-interruption.

**When to Use**

This is useful in situations where you want to allow interruption to happen
even in regions of the code that are normally uninterruptible.

To import and use `allowInterrupt` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.allowInterrupt
```

**Signature**

```ts
export declare const allowInterrupt: Effect<void, never, never>
```
