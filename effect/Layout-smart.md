# smart

A layout algorithm with more look ahead than `pretty`, which will introduce
line breaks into a document earlier if the content does not, or will not, fit
onto one line.

To import and use `smart` from the "Layout" module:

```ts
import * as Layout from "@effect/printer/Layout"
// Can be accessed like this
Layout.smart
```

**Example**

```ts
import * as Doc from "@effect/printer/Doc"
import type * as DocStream from "@effect/printer/DocStream"
import * as Layout from "@effect/printer/Layout"
import * as PageWidth from "@effect/printer/PageWidth"
import { pipe } from "effect/Function"
import * as String from "effect/String"

// Consider the following python-ish document:
const fun = <A>(doc: Doc.Doc<A>): Doc.Doc<A> =>
  Doc.hcat([pipe(Doc.hcat([Doc.text("fun("), Doc.softLineBreak, doc]), Doc.hang(2)), Doc.text(")")])

const funs = <A>(doc: Doc.Doc<A>): Doc.Doc<A> => pipe(doc, fun, fun, fun, fun, fun)

const doc = funs(Doc.align(Doc.list(Doc.words("abcdef ghijklm"))))

// The document will be rendered using the following pipeline, where the choice
// of layout algorithm has been left open:
const pageWidth = PageWidth.availablePerLine(26, 1)
const layoutOptions = Layout.options(pageWidth)
const dashes = Doc.text(Array.from({ length: 26 - 2 }, () => "-").join(""))
const hr = Doc.hcat([Doc.vbar, dashes, Doc.vbar])

const render =
  <A>(doc: Doc.Doc<A>) =>
  (layoutAlgorithm: (options: Layout.Layout.Options) => (doc: Doc.Doc<A>) => DocStream.DocStream<A>): string =>
    pipe(Doc.vsep([hr, doc, hr]), layoutAlgorithm(layoutOptions), Doc.renderStream)

// If rendered using `Layout.pretty`, with a page width of `26` characters per line,
// all the calls to `fun` will fit into the first line. However, this exceeds the
// desired `26` character page width.
assert.strictEqual(
  render(doc)(Layout.pretty),
  String.stripMargin(
    `||------------------------|
     |fun(fun(fun(fun(fun(
     |                  [ abcdef
     |                  , ghijklm ])))))
     ||------------------------|`
  )
)

// The same document, rendered with `Layout.smart`, fits the layout contstraints:
assert.strictEqual(
  render(doc)(Layout.smart),
  String.stripMargin(
    `||------------------------|
     |fun(
     |  fun(
     |    fun(
     |      fun(
     |        fun(
     |          [ abcdef
     |          , ghijklm ])))))
     ||------------------------|`
  )
)

// The key difference between `Layout.pretty` and `Layout.smart` is that the
// latter will check the potential document until it encounters a line with the
// same indentation or less than the start of the document. Any line encountered
// earlier is assumed to belong to the same syntactic structure. In contrast,
// `Layout.pretty` checks only the first line.

// Consider for example the question of whether the `A`s fit into the document
// below:
// > 1 A
// > 2   A
// > 3  A
// > 4 B
// > 5   B

// `pretty` will check only the first line, ignoring whether the second line
// may already be too wide. In contrast, `Layout.smart` stops only once it reaches
// the fourth line 4, where the `B` has the same indentation as the first `A`.
```

**Signature**

```ts
export declare const smart: {
  (options: Layout.Options): <A>(self: Doc<A>) => DocStream<A>
  <A>(self: Doc<A>, options: Layout.Options): DocStream<A>
}
```
