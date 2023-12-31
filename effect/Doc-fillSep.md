# fillSep

The `fillSep` combinator concatenates all documents in a collection
horizontally by placing a `space` between each pair of documents as long as
they fit the page. Once the page width is exceeded, a `line` is inserted and
the process is repeated for all documents in the collection.

**Note**: the use of `line` means that if `group`ed, the documents will be
separated with a `space` instead of newlines. See `fillCat` if you do not
want a `space`.

To import and use `fillSep` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.fillSep
```

**Signature**

```ts
export declare const fillSep: <A>(docs: Iterable<Doc<A>>) => Doc<A>
```
