# isRuntimeFiber

Returns `true` if the specified `Fiber` is a `RuntimeFiber`, `false`
otherwise.

To import and use `isRuntimeFiber` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.isRuntimeFiber
```

**Signature**

```ts
export declare const isRuntimeFiber: <A, E>(self: Fiber<A, E>) => self is RuntimeFiber<A, E>
```
