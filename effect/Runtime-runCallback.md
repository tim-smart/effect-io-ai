## runCallback

Executes the effect asynchronously, eventually passing the exit value to
the specified callback.

This method is effectful and should only be invoked at the edges of your
program.

**Signature**

```ts
declare const runCallback: <R>(runtime: Runtime<R>) => <A, E>(effect: Effect.Effect<A, E, R>, options?: RunCallbackOptions<A, E> | undefined) => Cancel<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Runtime.ts#L129)

Since v2.0.0