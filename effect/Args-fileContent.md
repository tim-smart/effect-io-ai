# fileContent

Creates a file argument that reads its contents.

Can optionally provide a custom argument name (defaults to `"file"`).

To import and use `fileContent` from the "Args" module:

```ts
import * as Args from "@effect/cli/Args"
// Can be accessed like this
Args.fileContent
```

**Signature**

```ts
export declare const fileContent: (
  config?: Args.BaseArgsConfig | undefined
) => Args<readonly [path: string, content: Uint8Array]>
```
