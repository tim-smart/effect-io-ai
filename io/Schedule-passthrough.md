# passthrough

Returns a new schedule that passes through the inputs of this schedule.

Part of the `Schedule` module, imported from `@effect/io/Schedule`.

**Signature**

```ts
export declare const passthrough: <Env, Input, Output>(
  self: Schedule<Env, Input, Output>
) => Schedule<Env, Input, Input>
```
