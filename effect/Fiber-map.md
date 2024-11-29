# map

Maps over the value the Fiber computes.

To import and use `map` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.map
undefined

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Fiber<A, E>) => Fiber<B, E>
  <A, E, B>(self: Fiber<A, E>, f: (a: A) => B): Fiber<B, E>
}
```
