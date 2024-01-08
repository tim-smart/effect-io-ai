# custom

Creates a custom `Prompt` from the provided `render` and `process` functions
with the specified initial state.

The `render` function will be used to render the terminal prompt to a user
and is invoked at the beginning of each terminal render frame. The `process`
function is invoked immediately after a user presses a key.

To import and use `custom` from the "Prompt" module:

```ts
import * as Prompt from "@effect/cli/Prompt"
// Can be accessed like this
Prompt.custom
```

**Signature**

```ts
export declare const custom: <State, Output>(
  initialState: State,
  render: (
    prevState: Option<State>,
    nextState: State,
    action: Prompt.Action<State, Output>
  ) => Effect<Terminal, never, string>,
  process: (input: UserInput, state: State) => Effect<Terminal, never, Prompt.Action<State, Output>>
) => Prompt<Output>
```
