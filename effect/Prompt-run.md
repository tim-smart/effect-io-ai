# run

Executes the specified `Prompt`.

To import and use `run` from the "Prompt" module:

ts
import \* as Prompt from "@effect/cli/Prompt"
// Can be accessed like this
Prompt.run
undefined

**Signature**

```ts
export declare const run: <Output>(self: Prompt<Output>) => Effect<Output, QuitException, Prompt.Environment>
```
