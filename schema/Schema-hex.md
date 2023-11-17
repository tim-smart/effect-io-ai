# hex

Transforms a hex `string` into a `Uint8Array`.

To import and use `hex` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.hex
```

**Signature**

```ts
export declare const hex: <I, A extends string>(self: Schema<I, A>) => Schema<I, Uint8Array>
```
