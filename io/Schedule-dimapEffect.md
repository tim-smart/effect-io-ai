# dimapEffect

Returns a new schedule that contramaps the input and maps the output.

To import and use `dimapEffect` from the "Schedule" module:

```ts
import * as Schedule from '@effect/io/Schedule'

// Can be accessed like this
Schedule.dimapEffect
```

**Signature**

```ts
export declare const dimapEffect: {
  <In2, Env2, In, Out, Env3, Out2>(options: {
    readonly onInput: (input: In2) => Effect.Effect<Env2, never, In>
    readonly onOutput: (out: Out) => Effect.Effect<Env3, never, Out2>
  }): <Env>(self: Schedule<Env, In, Out>) => Schedule<Env2 | Env3 | Env, In2, Out2>
  <Env, In, Out, In2, Env2, Env3, Out2>(
    self: Schedule<Env, In, Out>,
    options: {
      readonly onInput: (input: In2) => Effect.Effect<Env2, never, In>
      readonly onOutput: (out: Out) => Effect.Effect<Env3, never, Out2>
    }
  ): Schedule<Env | Env2 | Env3, In2, Out2>
}
```
