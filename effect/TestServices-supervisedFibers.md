# supervisedFibers

Returns the set of all fibers in this test.

To import and use `supervisedFibers` from the "TestServices" module:

ts
import \* as TestServices from "effect/TestServices"
// Can be accessed like this
TestServices.supervisedFibers
undefined

**Signature**

```ts
export declare const supervisedFibers: () => Effect.Effect<SortedSet.SortedSet<Fiber.RuntimeFiber<unknown, unknown>>>
```
