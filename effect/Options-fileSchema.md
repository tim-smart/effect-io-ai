# fileSchema

Creates a parameter expecting path to a file, parse its contents and validate
it with a Schema.

To import and use `fileSchema` from the "Options" module:

ts
import \* as Options from "@effect/cli/Options"
// Can be accessed like this
Options.fileSchema
undefined

**Signature**

```ts
export declare const fileSchema: <I, A>(
  name: string,
  schema: Schema<A, I, FileSystem | Path | Terminal>,
  format?: "json" | "yaml" | "ini" | "toml" | undefined
) => Options<A>
```
