# inheritAll

Inherits values from all `FiberRef` instances into current fiber. This
will resume immediately.

To import and use `inheritAll` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.inheritAll
undefined

**Signature**

```ts
export declare const inheritAll: <A, E>(self: Fiber<A, E>) => Effect.Effect<void>
```
