# fileText

Creates a parameter expecting path to a file and reads its contents.

To import and use `fileText` from the "Options" module:

```ts
import * as Options from "@effect/cli/Options"
// Can be accessed like this
Options.fileText
```

**Signature**

```ts
export declare const fileText: (name: string) => Options<readonly [path: string, content: string]>
```
