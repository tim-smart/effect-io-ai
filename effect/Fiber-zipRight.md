# zipRight

Same as `zip` but discards the output of this `Fiber`.

To import and use `zipRight` from the "Fiber" module:

ts
import \* as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.zipRight
undefined

**Signature**

```ts
export declare const zipRight: {
  <A2, E2>(that: Fiber<A2, E2>): <A, E>(self: Fiber<A, E>) => Fiber<A2, E2 | E>
  <A, E, A2, E2>(self: Fiber<A, E>, that: Fiber<A2, E2>): Fiber<A2, E | E2>
}
```
