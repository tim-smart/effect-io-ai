Package: `effect`<br />
Module: `Schema`<br />

## Schema.NumberFromString

This schema transforms a `string` into a `number` by parsing the string using the `parse` function of the `effect/Number` module.

It returns an error if the value can't be converted (for example when non-numeric characters are provided).

The following special string values are supported: "NaN", "Infinity", "-Infinity".

**Signature**

```ts
declare class NumberFromString
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5340)

Since v3.10.0