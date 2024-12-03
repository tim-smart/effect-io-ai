# succeed

Returns a schedule that repeats one time, producing the specified constant
value.

To import and use `succeed` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.succeed
```

**Signature**

```ts
export declare const succeed: <A>(value: A) => Schedule<A>
```
