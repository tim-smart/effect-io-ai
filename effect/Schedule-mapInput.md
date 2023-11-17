# mapInput

Returns a new schedule that deals with a narrower class of inputs than this
schedule.

To import and use `mapInput` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.mapInput
```

**Signature**

```ts
export declare const mapInput: {
  <In, In2>(f: (in2: In2) => In): <Env, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In2, Out>
  <Env, In, Out, In2>(self: Schedule<Env, In, Out>, f: (in2: In2) => In): Schedule<Env, In2, Out>
}
```
