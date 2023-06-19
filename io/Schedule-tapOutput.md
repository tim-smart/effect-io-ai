# tapOutput

Returns a new schedule that effectfully processes every output from this
schedule.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const tapOutput: {
  <Out, Env2, X>(f: (out: Out) => Effect.Effect<Env2, never, X>): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2, X>(self: Schedule<Env, In, Out>, f: (out: Out) => Effect.Effect<Env2, never, X>): Schedule<
    Env | Env2,
    In,
    Out
  >
}
```
