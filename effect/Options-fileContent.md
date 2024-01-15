# fileContent

Creates a parameter expecting path to a file and reads its contents.

To import and use `fileContent` from the "Options" module:

```ts
import * as Options from "@effect/cli/Options"
// Can be accessed like this
Options.fileContent
```

**Signature**

```ts
export declare const fileContent: (name: string) => Options<readonly [path: string, content: Uint8Array]>
```
