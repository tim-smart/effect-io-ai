# text

Creates a text argument.

Can optionally provide a custom argument name (defaults to `"text"`).

To import and use `text` from the "Args" module:

ts
import \* as Args from "@effect/cli/Args"
// Can be accessed like this
Args.text
undefined

**Signature**

```ts
export declare const text: (config?: Args.BaseArgsConfig) => Args<string>
```
