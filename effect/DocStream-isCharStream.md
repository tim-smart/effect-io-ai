# isCharStream

Returns `true` if the specified `DocStream` is a `CharStream`, `false` otherwise.

To import and use `isCharStream` from the "DocStream" module:

```ts
import * as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.isCharStream
```

**Signature**

```ts
export declare const isCharStream: <A>(self: DocStream<A>) => self is CharStream<A>
```
