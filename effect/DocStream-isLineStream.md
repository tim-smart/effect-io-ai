# isLineStream

Returns `true` if the specified `DocStream` is a `LineStream`, `false` otherwise.

To import and use `isLineStream` from the "DocStream" module:

```ts
import * as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.isLineStream
```

**Signature**

```ts
export declare const isLineStream: <A>(self: DocStream<A>) => self is LineStream<A>
```
