# unsafeGet

Retrieve the fiber from the FiberHandle.

To import and use `unsafeGet` from the "FiberHandle" module:

```ts
import * as FiberHandle from "effect/FiberHandle"
// Can be accessed like this
FiberHandle.unsafeGet
```

**Signature**

```ts
export declare const unsafeGet: <A, E>(self: FiberHandle<A, E>) => Option.Option<Fiber.RuntimeFiber<A, E>>
```
