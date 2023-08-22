# parseJson

The `parseJson` combinator offers a method to convert JSON strings into the `unknown` type using the underlying
functionality of `JSON.parse`. It also employs `JSON.stringify` for encoding.

To import and use `parseJson` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.parseJson
```

**Signature**

```ts
export declare const parseJson: <I, A extends string>(
  self: Schema<I, A>,
  options?: {
    reviver?: Parameters<typeof JSON.parse>[1]
    replacer?: Parameters<typeof JSON.stringify>[1]
    space?: Parameters<typeof JSON.stringify>[2]
  }
) => Schema<I, unknown>
```
