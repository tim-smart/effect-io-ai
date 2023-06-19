# upTo

A schedule that recurs during the given duration.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const upTo: {
  (duration: Duration.Duration): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, duration: Duration.Duration): Schedule<Env, In, Out>
}
```
