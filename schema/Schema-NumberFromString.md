# NumberFromString

This schema transforms a `string` into a `number` by parsing the string using the `Number` function.

It returns an error if the value can't be converted (for example when non-numeric characters are provided).

The following special string values are supported: "NaN", "Infinity", "-Infinity".

Part of the `Schema` module, imported from `@effect/schema/Schema`.

**Signature**

```ts
export declare const NumberFromString: Schema<string, number>
```
