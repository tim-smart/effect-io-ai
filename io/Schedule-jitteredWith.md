# jitteredWith

Returns a new schedule that randomly modifies the size of the intervals of
this schedule.

The new interval size is between `min * old interval size` and `max * old
interval size`.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const jitteredWith: {
  (options: { min?: number; max?: number }): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, options: { min?: number; max?: number }): Schedule<Env, In, Out>
}
```
