# uint8ArrayFromNumbers

A combinator that transforms a `number` array into a `Uint8Array`.

To import and use `uint8ArrayFromNumbers` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.uint8ArrayFromNumbers
```

**Signature**

```ts
export declare const uint8ArrayFromNumbers: <I, A extends readonly number[]>(
  self: Schema<I, A>
) => Schema<I, Uint8Array>
```
