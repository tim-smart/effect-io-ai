# runSyncEither

Executes the effect synchronously returning either the result or a failure.

Throwing in case of defects and interruptions.

This method is effectful and should only be invoked at the edges of your
program.

To import and use `runSyncEither` from the "Runtime" module:

```ts
import * as Runtime from '@effect/io/Runtime'

// Can be accessed like this
Runtime.runSyncEither
```

**Signature**

```ts
export declare const runSyncEither: <R>(runtime: Runtime<R>) => <E, A>(effect: Effect.Effect<R, E, A>) => Either<E, A>
```
