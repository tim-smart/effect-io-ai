Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.runSyncExit

Executes the effect synchronously returning the exit.

This method is effectful and should only be invoked at the edges of your
program.

**Signature**

```ts
declare const runSyncExit: { <A, E, R>(runtime: Runtime<R>, effect: Effect.Effect<A, E, R>): Exit.Exit<A, E>; <R>(runtime: Runtime<R>): <A, E>(effect: Effect.Effect<A, E, R>) => Exit.Exit<A, E>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runtime.ts#L104)

Since v2.0.0