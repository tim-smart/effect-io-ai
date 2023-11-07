# untilOutput

Returns a new schedule that continues until the specified predicate on the
output evaluates to true.

To import and use `untilOutput` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.untilOutput
```

**Signature**

```ts
export declare const untilOutput: {
  <Out>(f: Predicate<Out>): <Env, In>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out>
  <Env, In, Out>(self: Schedule<Env, In, Out>, f: Predicate<Out>): Schedule<Env, In, Out>
}
```
