# modifyDelay

Returns a new schedule that modifies the delay using the specified
function.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const modifyDelay: {
  <Out>(f: (out: Out, duration: Duration.Duration) => Duration.Duration): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env, In, Out>
  <Env, In, Out>(
    self: Schedule<Env, In, Out>,
    f: (out: Out, duration: Duration.Duration) => Duration.Duration
  ): Schedule<Env, In, Out>
}
```
