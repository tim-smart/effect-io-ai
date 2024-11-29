# file

Creates a file argument.

Can optionally provide a custom argument name (defaults to `"file"`).

To import and use `file` from the "Args" module:

ts
import \* as Args from "@effect/cli/Args"
// Can be accessed like this
Args.file
undefined

**Signature**

```ts
export declare const file: (config?: Args.PathArgsConfig) => Args<string>
```
