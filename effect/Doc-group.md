# group

The `group` combinator attempts to lay out a document onto a single line by
removing the contained line breaks. If the result does not fit the page, or
if a `hardLine` prevents flattening the document, `x` is laid out without
any changes.

The `group` function is key to layouts that adapt to available space nicely.

To import and use `group` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.group
undefined

**Signature**

```ts
export declare const group: <A>(self: Doc<A>) => Doc<A>
```
