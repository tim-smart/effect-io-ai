# runPromiseExit

Runs the `Effect`, returning a JavaScript `Promise` that will be resolved
with the `Exit` state of the effect once the effect has been executed.

This method is effectful and should only be used at the edges of your
program.

To import and use `runPromiseExit` from the "Runtime" module:

```ts
import * as Runtime from 'effect/Runtime'

// Can be accessed like this
Runtime.runPromiseExit
```

**Signature**

```ts
export declare const runPromiseExit: <R>(
  runtime: Runtime<R>
) => <E, A>(effect: Effect.Effect<R, E, A>) => Promise<Exit.Exit<E, A>>
```
