Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.Handlers

Represents the set of handlers used by a `Prompt` to:

  - Render the current frame of the prompt
  - Process user input and determine the next `Prompt.Action` to take
  - Clear the terminal screen before the next frame

**Signature**

```ts
export interface Handlers<State, Output> {
  /**
   * A function that is called to render the current frame of the `Prompt`.
   */
  readonly render: (
    state: State,
    action: Action<State, Output>
  ) => Effect.Effect<string, never, Environment>
  /**
   * A function that is called to process user input and determine the next
   * `Prompt.Action` that should be taken.
   */
  readonly process: (
    input: Terminal.UserInput,
    state: State
  ) => Effect.Effect<Action<State, Output>, never, Environment>
  /**
   * A function that is called to clear the terminal screen before rendering
   * the next frame of the `Prompt`.
   */
  readonly clear: (
    state: State,
    action: Action<State, Output>
  ) => Effect.Effect<string, never, Environment>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L117)

Since v4.0.0