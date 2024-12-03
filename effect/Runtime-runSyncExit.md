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
export declare const runSyncExit: <R>(runtime: Runtime<R>) => <A, E>(effect: Effect.Effect<A, E, R>) => Exit.Exit<A, E>
```
