# zipWith

Equivalent to `intersect` followed by `map`.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const zipWith: {
  <Env2, In2, Out2, Out, Out3>(that: Schedule<Env2, In2, Out2>, f: (out: Out, out2: Out2) => Out3): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In & In2, Out3>
  <Env, In, Out, Env2, In2, Out2, Out3>(
    self: Schedule<Env, In, Out>,
    that: Schedule<Env2, In2, Out2>,
    f: (out: Out, out2: Out2) => Out3
  ): Schedule<Env | Env2, In & In2, Out3>
}
```
