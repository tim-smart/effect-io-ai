# numberFromString

This combinator transforms a `string` into a `number` by parsing the string using the `Number` function.

It returns an error if the value can't be converted (for example when non-numeric characters are provided).

The following special string values are supported: "NaN", "Infinity", "-Infinity".

To import and use `numberFromString` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.numberFromString
```

**Signature**

```ts
export declare const numberFromString: <I, A extends string>(self: Schema<I, A>) => Schema<I, number>
```
