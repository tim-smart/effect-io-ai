# base64url

Transforms a base64url `string` into a `Uint8Array`.

To import and use `base64url` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.base64url
```

**Signature**

```ts
export declare const base64url: <I, A extends string>(self: Schema<I, A>) => Schema<I, Uint8Array>
```
