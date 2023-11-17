# upTo

A schedule that recurs during the given duration.

To import and use `upTo` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.upTo
```

**Signature**

```ts
export declare const upTo: {
  (duration: Duration.DurationInput): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, duration: Duration.DurationInput): Schedule<Env, In, Out>
}
```
