# delays

Returns a new schedule that outputs the delay between each occurence.

To import and use `delays` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.delays
```

**Signature**

```ts
export declare const delays: <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Duration.Duration>
```
