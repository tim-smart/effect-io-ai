# lineBreak

The `lineBreak` document is like `line` but behaves like `empty` if the line
break is undone by `group` (instead of `space`).

To import and use `lineBreak` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.lineBreak
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import * as Render from "@effect/printer/Render"
import * as String from "effect/String"

const doc: Doc.Doc<never> = Doc.hcat([Doc.text("lorem ipsum"), Doc.lineBreak, Doc.text("dolor sit amet")])

assert.strictEqual(
  Render.prettyDefault(doc),
  String.stripMargin(
    `|lorem ipsum
     |dolor sit amet`
  )
)
assert.strictEqual(Render.prettyDefault(Doc.group(doc)), "lorem ipsumdolor sit amet")
```

**Signature**

```ts
export declare const lineBreak: Doc<never>
```
