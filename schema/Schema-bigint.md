# bigint

This schema transforms a `string` into a `bigint` by parsing the string using the `BigInt` function.

It returns an error if the value can't be converted (for example when non-numeric characters are provided).

To import and use `bigint` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.bigint
```

**Signature**

```ts
export declare const bigint: Schema<string, bigint>
```
