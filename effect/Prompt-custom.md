# custom

Creates a custom `Prompt` from the specified initial state and handlers.

The initial state can either be a pure value or an `Effect`. This is
particularly useful when the initial state of the `Prompt` must be computed
by performing some effectful computation, such as reading data from the file
system.

A `Prompt` is essentially a render loop where user input triggers a new frame
to be rendered to the `Terminal`. The `handlers` of a custom prompt are used
to control what is rendered to the `Terminal` each frame. During each frame,
the following occurs:

1. The `render` handler is called with this frame's prompt state and prompt
   action and returns an ANSI escape string to be rendered to the
   `Terminal`
2. The `Terminal` obtains input from the user
3. The `process` handler is called with the input obtained from the user
   and this frame's prompt state and returns the next prompt action that
   should be performed
4. The `clear` handler is called with this frame's prompt state and prompt
   action and returns an ANSI escape string used to clear the screen of
   the `Terminal`

To import and use `custom` from the "Prompt" module:

```ts
import * as Prompt from "@effect/cli/Prompt"
// Can be accessed like this
Prompt.custom
```

**Signature**

```ts
export declare const custom: <State, Output>(
  initialState: State | Effect<State, never, Prompt.Environment>,
  handlers: Prompt.Handlers<State, Output>
) => Prompt<Output>
```
