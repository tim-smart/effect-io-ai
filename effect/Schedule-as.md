# as

Returns a new schedule that maps this schedule to a constant output.

To import and use `as` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.as
```

**Signature**

```ts
export declare const as: {
  <Out2>(out: Out2): <Env, In, Out>(self: Schedule<Env, In, Out>) => Schedule<Env, In, Out2>
  <Env, In, Out, Out2>(self: Schedule<Env, In, Out>, out: Out2): Schedule<Env, In, Out2>
}
```
