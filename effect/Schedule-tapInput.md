# tapInput

Returns a new schedule that effectfully processes every input to this
schedule.

To import and use `tapInput` from the "Schedule" module:

```ts
import * as Schedule from 'effect/Schedule'

// Can be accessed like this
Schedule.tapInput
```

**Signature**

```ts
export declare const tapInput: {
  <Env2, In2, X>(f: (input: In2) => Effect.Effect<Env2, never, X>): <Env, In, Out>(
    self: Schedule<Env, In, Out>
  ) => Schedule<Env2 | Env, In & In2, Out>
  <Env, In, Out, Env2, In2, X>(
    self: Schedule<Env, In, Out>,
    f: (input: In2) => Effect.Effect<Env2, never, X>
  ): Schedule<Env | Env2, In & In2, Out>
}
```
