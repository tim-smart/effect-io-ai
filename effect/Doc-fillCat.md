# fillCat

The `fillCat` combinator concatenates all documents in a collection
horizontally by placing a `empty` between each pair of documents as long as
they fit the page. Once the page width is exceeded, a `lineBreak` is inserted
and the process is repeated for all documents in the collection.

**Note**: the use of `lineBreak` means that if `group`ed, the documents will
be separated with `empty` instead of newlines. See `fillSep` if you want a
`space` instead.

To import and use `fillCat` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.fillCat
```

**Signature**

```ts
export declare const fillCat: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
