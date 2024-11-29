# unbounded

The `unbounded` layout algorithm will lay out a document an `Unbounded`
page width.

To import and use `unbounded` from the "Layout" module:

ts
import \* as Layout from "@effect/printer/Layout"
// Can be accessed like this
Layout.unbounded
undefined

**Signature**

```ts
export declare const unbounded: <A>(self: Doc<A>) => DocStream<A>
```
