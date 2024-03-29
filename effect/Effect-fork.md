# fork

Returns an effect that forks this effect into its own separate fiber,
returning the fiber immediately, without waiting for it to begin executing
the effect.

You can use the `fork` method whenever you want to execute an effect in a
new fiber, concurrently and without "blocking" the fiber executing other
effects. Using fibers can be tricky, so instead of using this method
directly, consider other higher-level methods, such as `raceWith`,
`zipPar`, and so forth.

The fiber returned by this method has methods to interrupt the fiber and to
wait for it to finish executing the effect. See `Fiber` for more
information.

Whenever you use this method to launch a new fiber, the new fiber is
attached to the parent fiber's scope. This means when the parent fiber
terminates, the child fiber will be terminated as well, ensuring that no
fibers leak. This behavior is called "auto supervision", and if this
behavior is not desired, you may use the `forkDaemon` or `forkIn` methods.

To import and use `fork` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.fork
```

**Signature**

```ts
export declare const fork: <A, E, R>(self: Effect<A, E, R>) => Effect<Fiber.RuntimeFiber<A, E>, never, R>
```
