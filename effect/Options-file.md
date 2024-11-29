# file

Creates a parameter expecting path to a file.

To import and use `file` from the "Options" module:

ts
import \* as Options from "@effect/cli/Options"
// Can be accessed like this
Options.file
undefined

**Signature**

```ts
export declare const file: (name: string, config?: Options.PathOptionsConfig) => Options<string>
```
