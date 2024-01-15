# fileParse

Creates a parameter expecting path to a file and parse its contents.

To import and use `fileParse` from the "Options" module:

```ts
import * as Options from "@effect/cli/Options"
// Can be accessed like this
Options.fileParse
```

**Signature**

```ts
export declare const fileParse: (
  name: string,
  format?: "json" | "yaml" | "ini" | "toml" | undefined
) => Options<unknown>
```
