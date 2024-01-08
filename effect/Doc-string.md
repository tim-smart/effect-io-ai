# string

Constructs a document containing a string of text.

**Note**: newline characters (`\n`) contained in the provided string will be
disregarded (i.e. not rendered) in the output document.

To import and use `string` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.string
```

**Signature**

```ts
export declare const string: (str: string) => Doc<never>
```
