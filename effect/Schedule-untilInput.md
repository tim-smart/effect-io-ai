# untilInput

Returns a new schedule that continues until the specified predicate on the
input evaluates to true.

To import and use `untilInput` from the "Schedule" module:

```ts
import * as Schedule from "effect/Schedule"
// Can be accessed like this
Schedule.untilInput
```

**Signature**

```ts
export declare const untilInput: {
  <In>(f: Predicate<In>): <Env, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, f: Predicate<In>): Schedule<Env, In, Out>
}
```
