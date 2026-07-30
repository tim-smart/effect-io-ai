Package: `@effect/printer`<br />
Module: `Doc`<br />

## Doc.sanitize

Removes control characters from the text leaves of a document while
preserving its structure and annotations.

Horizontal tabs (`U+0009`) and line feeds (`U+000A`) are preserved. Other C0
controls, DEL (`U+007F`), and C1 controls (`U+0080` through `U+009F`) are
removed.

Use this at the boundary where untrusted text enters a document that will be
rendered to a terminal. Existing constructors and renderers remain suitable
for trusted text containing intentional terminal sequences, such as OSC 8
hyperlinks.

**Example**

```ts
import * as assert from "node:assert"
import * as Doc from "@effect/printer/Doc"

const doc = Doc.sanitize(Doc.text("hello\u001bworld"))

assert.strictEqual(
  Doc.render(doc, { style: "pretty" }),
  "helloworld"
)
```

**Signature**

```ts
declare const sanitize: <A>(self: Doc<A>) => Doc<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/Doc.ts#L2267)

Since v1.0.0