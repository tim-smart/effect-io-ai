# remainingWidth

Calculates the remaining width on the current line.

To import and use `remainingWidth` from the "PageWidth" module:

```ts
import * as PageWidth from "@effect/printer/PageWidth"
// Can be accessed like this
PageWidth.remainingWidth
```

**Signature**

```ts
export declare const remainingWidth: (
  lineLength: number,
  ribbonFraction: number,
  lineIndent: number,
  currentColumn: number
) => number
```
