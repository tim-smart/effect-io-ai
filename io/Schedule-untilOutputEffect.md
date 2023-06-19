# untilOutputEffect

Returns a new schedule that continues until the specified effectful
predicate on the output evaluates to true.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const untilOutputEffect: {
  <Out, Env2>(f: (out: Out) => Effect.Effect<Env2, never, boolean>): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2>(self: Schedule<Env, In, Out>, f: (out: Out) => Effect.Effect<Env2, never, boolean>): Schedule<
    Env | Env2,
    In,
    Out
  >
}
```
