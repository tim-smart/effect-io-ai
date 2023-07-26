# bigintFromString

This combinator transforms a `string` into a `bigint` by parsing the string using the `BigInt` function.

It returns an error if the value can't be converted (for example when non-numeric characters are provided).

To import and use `bigintFromString` from the "Schema" module:

```ts
import * as Schema from '@effect/schema/Schema'

// Can be accessed like this
Schema.bigintFromString
```

**Signature**

```ts
export declare const bigintFromString: <I, A extends string>(self: Schema<I, A>) => Schema<I, bigint>
```
