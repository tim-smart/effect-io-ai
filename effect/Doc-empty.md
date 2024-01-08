# empty

The `empty` document behaves like a document containing the empty string
(`""`), so it has a height of `1`.

This may lead to surprising behavior if the empty document is expected to
bear no weight inside certain layout functions, such as`vcat`, where it will
render an empty line of output.

To import and use `empty` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.empty
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import * as String from "effect/String"

const doc = Doc.vsep([
  Doc.text("hello"),
  // `parentheses` for visibility purposes only
  Doc.parenthesized(Doc.empty),
  Doc.text("world")
])

const expected = `|hello
                  |()
                  |world`

assert.strictEqual(Render.prettyDefault(doc), String.stripMargin(expected))
```

**Signature**

```ts
export declare const empty: Doc<never>
```
