# fileText

Creates a file argument that reads it's contents.

Can optionally provide a custom argument name (defaults to `"file"`).

To import and use `fileText` from the "Args" module:

```ts
import * as Args from "@effect/cli/Args"
// Can be accessed like this
Args.fileText
```

**Signature**

```ts
export declare const fileText: (
  config?: Args.BaseArgsConfig | undefined
) => Args<readonly [path: string, content: string]>
```
