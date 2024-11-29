# decodeText

Decode Uint8Array chunks into a stream of strings using the specified encoding.

To import and use `decodeText` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.decodeText
undefined

**Signature**

```ts
export declare const decodeText: {
  (encoding?: string | undefined): <E, R>(self: Stream<Uint8Array, E, R>) => Stream<string, E, R>
  <E, R>(self: Stream<Uint8Array, E, R>, encoding?: string | undefined): Stream<string, E, R>
}
```
