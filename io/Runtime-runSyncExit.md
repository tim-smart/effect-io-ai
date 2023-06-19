# runSyncExit

Executes the effect synchronously returning the exit.

This method is effectful and should only be invoked at the edges of your
program.

Part of the `Runtime` module, imported from `@effect/io/Runtime`.

**Signature**

```ts
export declare const runSyncExit: <R>(runtime: Runtime<R>) => <E, A>(effect: Effect.Effect<R, E, A>) => Exit.Exit<E, A>
```
