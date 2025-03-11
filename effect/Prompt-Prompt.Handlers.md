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
     *
     * @param state The current state of the prompt.
     * @param action The `Prompt.Action` for the current frame.
     * @returns An ANSI escape code sequence to display in the terminal screen.
     */
    readonly render: (
      state: State,
      action: Action<State, Output>
    ) => Effect<string, never, Environment>
    /**
     * A function that is called to process user input and determine the next
     * `Prompt.Action` that should be taken.
     *
     * @param input The input the user provided for the current frame.
     * @param state The current state of the prompt.
     * @returns The next `Prompt.Action` that should be taken.
     */
    readonly process: (
      input: UserInput,
      state: State
    ) => Effect<Action<State, Output>, never, Environment>
    /**
     * A function that is called to clear the terminal screen before rendering
     * the next frame of the `Prompt`.
     *
     * @param action The `Prompt.Action` for the current frame.
     * @param columns The current number of columns available in the `Terminal`.
     * @returns An ANSI escape code sequence used to clear the terminal screen.
     */
    readonly clear: (
      state: State,
      action: Action<State, Output>
    ) => Effect<string, never, Environment>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Prompt.ts#L104)

Since v1.0.0