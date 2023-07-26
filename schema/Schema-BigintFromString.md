# BigintFromString

This schema transforms a `string` into a `bigint` by parsing the string using the `BigInt` function.

It returns an error if the value can't be converted (for example when non-numeric characters are provided).

To import and use `BigintFromString` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.BigintFromString
```

**Signature**

```ts
export declare const BigintFromString: Schema<string, bigint>
```
