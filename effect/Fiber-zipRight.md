# zipRight

Same as `zip` but discards the output of this `Fiber`.

To import and use `zipRight` from the "Fiber" module:

```ts
import * as Fiber from 'effect/Fiber'

// Can be accessed like this
Fiber.zipRight
```

**Signature**

```ts
export declare const zipRight: {
  <E2, A2>(that: Fiber<E2, A2>): <E, A>(self: Fiber<E, A>) => Fiber<E2 | E, A2>
  <E, A, E2, A2>(self: Fiber<E, A>, that: Fiber<E2, A2>): Fiber<E | E2, A2>
}
```
