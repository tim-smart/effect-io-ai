# resetWhen

Resets the schedule when the specified predicate on the schedule output
evaluates to true.

To import and use `resetWhen` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.resetWhen
```

**Signature**

```ts
export declare const resetWhen: {
  <Out>(f: Predicate<Out>): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, f: Predicate<Out>): Schedule<Env, In, Out>
}
```
