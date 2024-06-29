# runFork

Executes the effect using the provided Scheduler or using the global
Scheduler if not provided

To import and use `runFork` from the "Runtime" module:

```ts
import * as Runtime from "effect/Runtime"
// Can be accessed like this
Runtime.runFork
```

**Signature**

```ts
export declare const runFork: <R>(
  runtime: Runtime<R>
) => <A, E>(self: Effect.Effect<A, E, R>, options?: RunForkOptions) => Fiber.RuntimeFiber<A, E>
```
