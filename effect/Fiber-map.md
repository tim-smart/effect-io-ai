# map

Maps over the value the Fiber computes.

To import and use `map` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.map
```

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): <E>(self: Fiber<E, A>) => Fiber<E, B>
  <E, A, B>(self: Fiber<E, A>, f: (a: A) => B): Fiber<E, B>
}
```
