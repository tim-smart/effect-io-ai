# cursorRestorePosition

Restores the cursor position, encoding shift state and formatting attributes
from the previous save, if any, otherwise resets these all to their defaults.

To import and use `cursorRestorePosition` from the "AnsiDoc" module:

```ts
import * as AnsiDoc from "@effect/printer-ansi/AnsiDoc"
// Can be accessed like this
AnsiDoc.cursorRestorePosition
```

**Signature**

```ts
export declare const cursorRestorePosition: AnsiDoc
```
