# runSyncEither

Executes the effect synchronously returning either the result or a failure.

Throwing in case of defects and interruptions.

This method is effectful and should only be invoked at the edges of your
program.

Part of the `Runtime` module, imported from `@effect/io/Runtime`.

**Signature**

```ts
export declare const runSyncEither: <R>(runtime: Runtime<R>) => <E, A>(effect: Effect.Effect<R, E, A>) => Either<E, A>
```
