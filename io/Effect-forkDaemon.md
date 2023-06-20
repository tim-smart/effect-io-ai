# forkDaemon

Forks the effect into a new fiber attached to the global scope. Because the
new fiber is attached to the global scope, when the fiber executing the
returned effect terminates, the forked fiber will continue running.

To import and use `forkDaemon` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.forkDaemon
```

**Signature**

```ts
export declare const forkDaemon: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Fiber.RuntimeFiber<E, A>>
```
