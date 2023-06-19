# provideService

Returns a new schedule with the single service it requires provided to it.
If the schedule requires multiple services use `provideContext`
instead.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const provideService: {
  <T, T1 extends T>(tag: any, service: T1): <Env, In, Out>(
    self: Schedule<T | Env, In, Out>
  ) => Schedule<Exclude<Env, T>, In, Out>
  <Env, T, In, Out, T1 extends T>(self: Schedule<Env | T, In, Out>, tag: any, service: T1): Schedule<
    Exclude<Env, T>,
    In,
    Out
  >
}
```
