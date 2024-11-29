# char

A document containing a single character.

**Invariants**

- Cannot be the newline (`"\n"`) character

To import and use `char` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.char
undefined

**Signature**

```ts
export declare const char: (char: string) => Doc<never>
```
