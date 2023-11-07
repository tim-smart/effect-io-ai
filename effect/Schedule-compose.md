# compose

Returns the composition of this schedule and the specified schedule, by
piping the output of this one into the input of the other. Effects
described by this schedule will always be executed before the effects
described by the second schedule.

To import and use `compose` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.compose
```

**Signature**

```ts
export declare const compose: {
  <Env2, Out, Out2>(that: Schedule<Env2, Out, Out2>): <Env, In>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out2>
  <Env, In, Out, Env2, Out2>(self: Schedule<Env, In, Out>, that: Schedule<Env2, Out, Out2>): Schedule<
    Env | Env2,
    In,
    Out2
  >
}
```
