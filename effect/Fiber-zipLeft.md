# zipLeft

Same as `zip` but discards the output of that `Fiber`.

To import and use `zipLeft` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.zipLeft
```

**Signature**

```ts
export declare const zipLeft: {
  <A2, E2>(that: Fiber<A2, E2>): <A, E>(self: Fiber<A, E>) => Fiber<A, E2 | E>
  <A, E, A2, E2>(self: Fiber<A, E>, that: Fiber<A2, E2>): Fiber<A, E | E2>
}
```
