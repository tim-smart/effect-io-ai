# status

Returns the `FiberStatus` of a `RuntimeFiber`.

To import and use `status` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.status
```

**Signature**

```ts
export declare const status: <A, E>(self: RuntimeFiber<A, E>) => Effect.Effect<FiberStatus.FiberStatus>
```
