# words

Splits a string of words into individual `Text` documents using the
specified `char` to split on (defaults to `" "`).

To import and use `words` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.words
undefined

**Example**

```ts
import * as Doc from "@effect/printer/Doc"

const doc = Doc.tupled(Doc.words("lorem ipsum dolor"))

assert.strictEqual(Doc.render(doc, { style: "pretty" }), "(lorem, ipsum, dolor)")
```

**Signature**

```ts
export declare const words: (s: string, char?: string) => ReadonlyArray<Doc<never>>
```
