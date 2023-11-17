# runSyncExit

Executes the effect synchronously returning the exit.

This method is effectful and should only be invoked at the edges of your
program.

To import and use `runSyncExit` from the "Runtime" module:

```ts
import * as Runtime from "effect/Runtime"
// Can be accessed like this
Runtime.runSyncExit
```

**Signature**

```ts
export declare const runSyncExit: <R>(runtime: Runtime<R>) => <E, A>(effect: Effect.Effect<R, E, A>) => Exit.Exit<E, A>
```
