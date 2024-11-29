# encodeText

Encode a stream of strings into a stream of Uint8Array chunks using the specified encoding.

To import and use `encodeText` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.encodeText
undefined

**Signature**

```ts
export declare const encodeText: <E, R>(self: Stream<string, E, R>) => Stream<Uint8Array, E, R>
```
