# parseNumber

Transforms a `string` into a `number` by parsing the string using the `parse`
function of the `effect/Number` module.

It returns an error if the value can't be converted (for example when
non-numeric characters are provided).

The following special string values are supported: "NaN", "Infinity",
"-Infinity".

To import and use `parseNumber` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.parseNumber
```

**Signature**

```ts
export declare function parseNumber<S extends Schema.Any, A extends string>(
  self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>
): transformOrFail<S, typeof Number$>
```
