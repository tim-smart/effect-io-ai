# cursorRestorePosition

Restores the cursor position, encoding shift state and formatting attributes
from the previous save, if any, otherwise resets these all to their defaults.

To import and use `cursorRestorePosition` from the "Ansi" module:

ts
import \* as Ansi from "@effect/printer-ansi/Ansi"
// Can be accessed like this
Ansi.cursorRestorePosition
undefined

**Signature**

```ts
export declare const cursorRestorePosition: Ansi
```
