Package: `effect`<br />
Module: `Effect`<br />

## Effect.runCallback

Executes an effect asynchronously and handles the result using a callback.

**Details**

This function runs an effect asynchronously and passes the result (`Exit`) to
a specified callback. The callback is invoked with the outcome of the effect:
- On success, the callback receives the successful result.
- On failure, the callback receives the failure information.

**When to Use**

This function is effectful and should only be invoked at the edges of your
program.

**Signature**

```ts
declare const runCallback: <A, E>(effect: Effect<A, E>, options?: Runtime.RunCallbackOptions<A, E> | undefined) => Runtime.Cancel<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L12059)

Since v2.0.0