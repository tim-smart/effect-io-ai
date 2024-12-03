# isTextStream

Returns `true` if the specified `DocStream` is a `TextStream`, `false` otherwise.

To import and use `isTextStream` from the "DocStream" module:

```ts
import * as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.isTextStream
```

**Signature**

```ts
export declare const isTextStream: <A>(self: DocStream<A>) => self is TextStream<A>
```
