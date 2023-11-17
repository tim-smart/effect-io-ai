# repetitions

Returns a new schedule that outputs the number of repetitions of this one.

To import and use `repetitions` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.repetitions
```

**Signature**

```ts
export declare const repetitions: <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, number>
```
