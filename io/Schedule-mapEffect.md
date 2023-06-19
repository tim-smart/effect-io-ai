# mapEffect

Returns a new schedule that maps the output of this schedule through the
specified effectful function.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const mapEffect: {
  <Out, Env2, Out2>(f: (out: Out) => Effect.Effect<Env2, never, Out2>): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out2>
  <Env, In, Out, Env2, Out2>(self: Schedule<Env, In, Out>, f: (out: Out) => Effect.Effect<Env2, never, Out2>): Schedule<
    Env | Env2,
    In,
    Out2
  >
}
```
