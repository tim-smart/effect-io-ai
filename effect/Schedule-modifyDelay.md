# modifyDelay

Returns a new schedule that modifies the delay using the specified
function.

To import and use `modifyDelay` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.modifyDelay
```

**Signature**

```ts
export declare const modifyDelay: {
  <Out>(f: (out: Out, duration: Duration.Duration) => Duration.DurationInput): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env, In, Out>
  <Env, In, Out>(
    self: Schedule<Env, In, Out>,
    f: (out: Out, duration: Duration.Duration) => Duration.DurationInput
  ): Schedule<Env, In, Out>
}
```
