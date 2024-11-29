# dieMessage

The stream that dies with an exception described by `message`.

To import and use `dieMessage` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.dieMessage
undefined

**Signature**

```ts
export declare const dieMessage: (message: string) => Stream<never>
```
