# line

The `line` document advances to the next line and indents to the current
nesting level. However, `line` will behave like `space` if the line break is
undone by `group`.

To import and use `line` from the "Doc" module:

ts
import \* as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.line
undefined

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat([Doc.text("lorem ipsum"), Doc.line, Doc.text("dolor sit amet")])

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  String.stripMargin(
    `|lorem ipsum
     |dolor sit amet`
  )
)
assert.strictEqual(Doc.render(Doc.group(doc), { style: "pretty" }), "lorem ipsum dolor sit amet")
```

**Signature**

```ts
export declare const line: Doc<never>
```
