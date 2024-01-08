# spaces

The `spaces` combinator lays out a document containing `n` spaces. Negative
values for `n` count as `0` spaces.

To import and use `spaces` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.spaces
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"

const doc = Doc.squareBracketed(Doc.doubleQuoted(Doc.spaces(5)))

assert.strictEqual(Render.prettyDefault(doc), '["     "]')
```

**Signature**

```ts
export declare const spaces: (n: number) => Doc<never>
```
