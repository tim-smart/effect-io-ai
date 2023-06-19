# bothInOut

Returns a new schedule that has both the inputs and outputs of this and the
specified schedule.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const bothInOut: {
  <Env2, In2, Out2>(that: Schedule<Env2, In2, Out2>): <Env, In, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, readonly [In, In2], readonly [Out, Out2]>
  <Env, In, Out, Env2, In2, Out2>(self: Schedule<Env, In, Out>, that: Schedule<Env2, In2, Out2>): Schedule<
    Env | Env2,
    readonly [In, In2],
    readonly [Out, Out2]
  >
}
```
