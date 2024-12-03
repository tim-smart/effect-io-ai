# poll

Tentatively observes the fiber, but returns immediately if it is not
already done.

To import and use `poll` from the "Fiber" module:

```ts
import * as Fiber from "effect/Fiber"
// Can be accessed like this
Fiber.poll
```

**Signature**

```ts
export declare const poll: <A, E>(self: Fiber<A, E>) => Effect.Effect<Option.Option<Exit.Exit<A, E>>>
```
