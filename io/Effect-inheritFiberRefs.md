# inheritFiberRefs

Inherits values from all `FiberRef` instances into current fiber.

To import and use `inheritFiberRefs` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.inheritFiberRefs
```

**Signature**

```ts
export declare const inheritFiberRefs: (childFiberRefs: FiberRefs.FiberRefs) => Effect<never, never, void>
```
