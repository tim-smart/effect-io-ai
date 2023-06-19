# delayed

Returns a new schedule with the specified effectfully computed delay added
before the start of each interval produced by this schedule.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const delayed: {
  (f: (duration: Duration.Duration) => Duration.Duration): <Env, In, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, f: (duration: Duration.Duration) => Duration.Duration): Schedule<
    Env,
    In,
    Out
  >
}
```
