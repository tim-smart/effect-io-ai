# andThen

The same as `andThenEither`, but merges the output.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const andThen: {
  <Env1, In1, Out2>(that: Schedule<Env1, In1, Out2>): <Env, In, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env1 | Env, In & In1, Out2 | Out>
  <Env, In, Out, Env1, In1, Out2>(self: Schedule<Env, In, Out>, that: Schedule<Env1, In1, Out2>): Schedule<
    Env | Env1,
    In & In1,
    Out | Out2
  >
}
```
