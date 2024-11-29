# failCause

Creates a `Fiber` that has already failed with the specified cause.

To import and use `failCause` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.failCause
undefined

**Signature**

```ts
export declare const failCause: <E>(cause: Cause.Cause<E>) => Fiber<never, E>
```
