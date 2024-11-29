# succeed

Creates a `Prompt` which immediately succeeds with the specified value.

**NOTE**: This method will not attempt to obtain user input or render
anything to the screen.

To import and use `succeed` from the "Prompt" module:

ts
import \* as Prompt from "@effect/cli/Prompt"
// Can be accessed like this
Prompt.succeed
undefined

**Signature**

```ts
export declare const succeed: <A>(value: A) => Prompt<A>
```
