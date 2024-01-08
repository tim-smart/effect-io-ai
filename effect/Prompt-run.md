# run

Executes the specified `Prompt`.

To import and use `run` from the "Prompt" module:

```ts
import * as Prompt from "@effect/cli/Prompt"
// Can be accessed like this
Prompt.run
```

**Signature**

```ts
export declare const run: <Output>(self: Prompt<Output>) => Effect<Terminal, QuitException, Output>
```
