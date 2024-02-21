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
export declare const delays: <Out, In, R>(self: Schedule<Out, In, R>) => Schedule<Duration.Duration, In, R>
```
