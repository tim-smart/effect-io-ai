# text

A document containing a string of text.

**Invariants**

- Text cannot be less than two characters long
- Text cannot contain a newline (`"\n"`) character

To import and use `text` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.text
undefined

**Signature**

```ts
export declare const text: (text: string) => Doc<never>
```
