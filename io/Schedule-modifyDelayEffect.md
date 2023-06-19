# modifyDelayEffect

Returns a new schedule that modifies the delay using the specified
effectual function.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const modifyDelayEffect: {
  <Out, Env2>(f: (out: Out, duration: Duration.Duration) => Effect.Effect<Env2, never, Duration.Duration>): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2>(
    self: Schedule<Env, In, Out>,
    f: (out: Out, duration: Duration.Duration) => Effect.Effect<Env2, never, Duration.Duration>
  ): Schedule<Env | Env2, In, Out>
}
```
