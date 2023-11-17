# asUnit

Returns a new schedule that maps the output of this schedule to unit.

To import and use `asUnit` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.asUnit
```

**Signature**

```ts
export declare const asUnit: <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, void>
```
