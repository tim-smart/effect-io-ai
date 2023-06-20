# zipLeft

Same as `zip` but discards the output of that `Fiber`.

To import and use `zipLeft` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.zipLeft
```

**Signature**

```ts
export declare const zipLeft: {
  <E2, A2>(that: Fiber<E2, A2>): <E, A>(self: Fiber<E, A>) => Fiber<E2 | E, A>
  <E, A, E2, A2>(self: Fiber<E, A>, that: Fiber<E2, A2>): Fiber<E | E2, A>
}
```
