# get

Retrieve the fiber from the FiberHandle.

To import and use `get` from the "FiberHandle" module:

```ts
import * as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.get
```

**Signature**

```ts
export declare const get: <A, E>(
  self: FiberHandle<A, E>
) => Effect.Effect<Fiber.RuntimeFiber<A, E>, NoSuchElementException>
```
