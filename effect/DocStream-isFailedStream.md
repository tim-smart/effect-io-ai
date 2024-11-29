# isFailedStream

Returns `true` if the specified `DocStream` is a `FailedStream`, `false` otherwise.

To import and use `isFailedStream` from the "DocStream" module:

ts
import \* as DocStream from "@effect/printer/DocStream"
// Can be accessed like this
DocStream.isFailedStream
undefined

**Signature**

```ts
export declare const isFailedStream: <A>(self: DocStream<A>) => self is FailedStream<A>
```
