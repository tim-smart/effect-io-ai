# runSync

Executes the effect synchronously throwing in case of errors or async boundaries.

This method is effectful and should only be invoked at the edges of your
program.

To import and use `runSync` from the "Runtime" module:

```ts
import * as Runtime from "effect/Runtime"
// Can be accessed like this
Runtime.runSync
```

**Signature**

```ts
export declare const runSync: <R>(runtime: Runtime<R>) => <E, A>(effect: Effect.Effect<R, E, A>) => A
```
