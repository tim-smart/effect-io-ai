# fork

Creates a new fiber to run an effect concurrently.

**Details**

This function takes an effect and forks it into a separate fiber, allowing it
to run concurrently without blocking the original effect. The new fiber
starts execution immediately after being created, and the fiber object is
returned immediately without waiting for the effect to begin. This is useful
when you want to run tasks concurrently while continuing other tasks in the
parent fiber.

The forked fiber is attached to the parent fiber's scope. This means that
when the parent fiber terminates, the child fiber will also be terminated
automatically. This feature, known as "auto supervision," ensures that no
fibers are left running unintentionally. If you prefer not to have this auto
supervision behavior, you can use {@link forkDaemon} or {@link forkIn}.

**When to Use**

Use this function when you need to run an effect concurrently without
blocking the current execution flow. For example, you might use it to launch
background tasks or concurrent computations. However, working with fibers can
be complex, so before using this function directly, you might want to explore
higher-level functions like {@link raceWith}, {@link zip}, or others that can
manage concurrency for you.

To import and use `fork` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.fork
```

**Example**

```ts
import { Effect } from "effect"

const fib = (n: number): Effect.Effect<number> =>
  n < 2 ? Effect.succeed(n) : Effect.zipWith(fib(n - 1), fib(n - 2), (a, b) => a + b)

//      ┌─── Effect<RuntimeFiber<number, never>, never, never>
//      ▼
const fib10Fiber = Effect.fork(fib(10))
```

**Signature**

```ts
export declare const fork: <A, E, R>(self: Effect<A, E, R>) => Effect<Fiber.RuntimeFiber<A, E>, never, R>
```
