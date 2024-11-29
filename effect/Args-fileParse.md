# fileParse

Creates a file argument that reads and parses its contents.

Can optionally provide a custom argument name (defaults to `"file"`).

To import and use `fileParse` from the "Args" module:

ts
import \* as Args from "@effect/cli/Args"
// Can be accessed like this
Args.fileParse
undefined

**Signature**

```ts
export declare const fileParse: (config?: Args.FormatArgsConfig | undefined) => Args<unknown>
```
