# reduceEffect

Returns a new schedule that effectfully folds over the outputs of this one.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const reduceEffect: {
  <Out, Env1, Z>(zero: Z, f: (z: Z, out: Out) => Effect.Effect<Env1, never, Z>): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env1 | Env, In, Z>
  <Env, In, Out, Env1, Z>(
    self: Schedule<Env, In, Out>,
    zero: Z,
    f: (z: Z, out: Out) => Effect.Effect<Env1, never, Z>
  ): Schedule<Env | Env1, In, Z>
}
```
