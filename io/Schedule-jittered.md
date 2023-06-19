# jittered

Returns a new schedule that randomly modifies the size of the intervals of
this schedule.

Defaults `min` to `0.8` and `max` to `1.2`.

The new interval size is between `min * old interval size` and `max * old
interval size`.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const jittered: <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Random.Random | Env, In, Out>
```
