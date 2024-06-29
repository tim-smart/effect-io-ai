# flatten

Flattens a document but does not report changes.

To import and use `flatten` from the "Doc" module:

```ts
import * as Doc from "@effect/printer/Doc"
// Can be accessed like this
Doc.flatten
```

**Signature**

```ts
export declare const flatten: <A>(self: Doc<A>) => Doc<A>
```
