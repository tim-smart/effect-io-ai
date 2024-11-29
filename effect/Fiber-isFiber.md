# isFiber

Returns `true` if the specified value is a `Fiber`, `false` otherwise.

To import and use `isFiber` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.isFiber
undefined

**Signature**

```ts
export declare const isFiber: (u: unknown) => u is Fiber<unknown, unknown>
```
