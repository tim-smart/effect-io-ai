# poll

Tentatively observes the fiber, but returns immediately if it is not
already done.

To import and use `poll` from the "Fiber" module:

```ts
import * as Fiber from '@effect/io/Fiber'

// Can be accessed like this
Fiber.poll
```

**Signature**

```ts
export declare const poll: <E, A>(self: Fiber<E, A>) => Effect.Effect<never, never, Option.Option<Exit.Exit<E, A>>>
```
