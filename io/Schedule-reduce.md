# reduce

Returns a new schedule that folds over the outputs of this one.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const reduce: {
  <Out, Z>(zero: Z, f: (z: Z, out: Out) => Z): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Z>
  <Env, In, Out, Z>(self: Schedule<Env, In, Out>, zero: Z, f: (z: Z, out: Out) => Z): Schedule<Env, In, Z>
}
```
