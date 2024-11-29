# succeed

Returns a fiber that has already succeeded with the specified value.

To import and use `succeed` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.succeed
undefined

**Signature**

```ts
export declare const succeed: <A>(value: A) => Fiber<A>
```
