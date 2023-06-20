# zip

Zips this fiber and the specified fiber together, producing a tuple of
their output.

To import and use `zip` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.zip
```

**Signature**

```ts
export declare const zip: {
  <E2, A2>(that: Fiber<E2, A2>): <E, A>(self: Fiber<E, A>) => Fiber<E2 | E, readonly [A, A2]>
  <E, A, E2, A2>(self: Fiber<E, A>, that: Fiber<E2, A2>): Fiber<E | E2, readonly [A, A2]>
}
```
