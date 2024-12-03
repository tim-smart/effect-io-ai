# isEmptyStream

Returns `true` if the specified `DocStream` is a `EmptyStream`, `false` otherwise.

To import and use `isEmptyStream` from the "DocStream" module:

```ts
import * as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.isEmptyStream
```

**Signature**

```ts
export declare const isEmptyStream: <A>(self: DocStream<A>) => self is EmptyStream<A>
```
