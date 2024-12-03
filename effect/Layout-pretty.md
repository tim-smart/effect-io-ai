# pretty

The `pretty` layout algorithm is the default algorithm for rendering
documents.

`pretty` commits to rendering something in a certain way if the next
element fits the layout constrants. In other words, it has one `DocStream`
element lookahead when rendering.

Consider using the smarter, but slightly less performant `smart`
algorithm if the results seem to run off to the right before having lots of
line breaks.

To import and use `pretty` from the "Layout" module:

```ts
import * as Layout from "@effect/printer/Layout"
// Can be accessed like this
Layout.pretty
```

**Signature**

```ts
export declare const pretty: {
  (options: Layout.Options): <A>(self: Doc<A>) => DocStream<A>
  <A>(self: Doc<A>, options: Layout.Options): DocStream<A>
}
```
