# runPromiseEither

Runs the `Effect`, returning a JavaScript `Promise` that will be resolved
with the either a success or a failure. The promise will be rejected in case
of defects and interruption.

This method is effectful and should only be used at the edges of your
program.

Part of the `Runtime` module, imported from `@effect/io/Runtime`.

**Signature**

```ts
export declare const runPromiseEither: <R>(
  runtime: Runtime<R>
) => <E, A>(effect: Effect.Effect<R, E, A>) => Promise<Either<E, A>>
```
