# inheritFiberRefs

Inherits values from all `FiberRef` instances into current fiber.

To import and use `inheritFiberRefs` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.inheritFiberRefs
undefined

**Signature**

```ts
export declare const inheritFiberRefs: (childFiberRefs: FiberRefs.FiberRefs) => Effect<void>
```
