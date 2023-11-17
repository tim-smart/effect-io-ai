# runCallback

Executes the effect asynchronously, eventually passing the exit value to
the specified callback.

This method is effectful and should only be invoked at the edges of your
program.

To import and use `runCallback` from the "Runtime" module:

```ts
import * as Runtime from "effect/Runtime"
// Can be accessed like this
Runtime.runCallback
```

**Signature**

```ts
export declare const runCallback: <R>(
  runtime: Runtime<R>
) => <E, A>(
  effect: Effect.Effect<R, E, A>,
  onExit?: ((exit: Exit.Exit<E, A>) => void) | undefined
) => (fiberId?: FiberId.FiberId | undefined, onExit?: ((exit: Exit.Exit<E, A>) => void) | undefined) => void
```
