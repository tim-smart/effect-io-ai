# zip

Zips this fiber and the specified fiber together, producing a tuple of
their output.

To import and use `zip` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.zip
```

**Signature**

```ts
export declare const zip: {
  <A2, E2>(that: Fiber<A2, E2>): <A, E>(self: Fiber<A, E>) => Fiber<[A, A2], E2 | E>
  <A, E, A2, E2>(self: Fiber<A, E>, that: Fiber<A2, E2>): Fiber<[A, A2], E | E2>
}
```
