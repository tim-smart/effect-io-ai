Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.runCallback

Executes the effect asynchronously, eventually passing the exit value to
the specified callback.

This method is effectful and should only be invoked at the edges of your
program.

**Signature**

```ts
declare const runCallback: { <R>(runtime: Runtime<R>): <A, E>(effect: Effect.Effect<A, E, R>, options?: RunCallbackOptions<A, E> | undefined) => (fiberId?: FiberId.FiberId, options?: RunCallbackOptions<A, E> | undefined) => void; <R, A, E>(runtime: Runtime<R>, effect: Effect.Effect<A, E, R>, options?: RunCallbackOptions<A, E> | undefined): (fiberId?: FiberId.FiberId, options?: RunCallbackOptions<A, E> | undefined) => void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runtime.ts#L141)

Since v2.0.0