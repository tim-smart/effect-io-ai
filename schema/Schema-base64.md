# base64

Transforms a base64 `string` into a `Uint8Array`.

To import and use `base64` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.base64
```

**Signature**

```ts
export declare const base64: <I, A extends string>(self: Schema<I, A>) => Schema<I, Uint8Array>
```
