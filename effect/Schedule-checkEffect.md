# checkEffect

Returns a new schedule that passes each input and output of this schedule
to the specified function, and then determines whether or not to continue
based on the return value of the function.

To import and use `checkEffect` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.checkEffect
```

**Signature**

```ts
export declare const checkEffect: {
  <In, Out, Env2>(test: (input: In, output: Out) => Effect.Effect<Env2, never, boolean>): <Env>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In, Out>
  <Env, In, Out, Env2>(
    self: Schedule<Env, In, Out>,
    test: (input: In, output: Out) => Effect.Effect<Env2, never, boolean>
  ): Schedule<Env | Env2, In, Out>
}
```
