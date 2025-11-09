Package: `effect`<br />
Module: `Schema`<br />

## Schema.parseNumber

Transforms a `string` into a `number` by parsing the string using the `parse`
function of the `effect/Number` module.

It returns an error if the value can't be converted (for example when
non-numeric characters are provided).

The following special string values are supported: "NaN", "Infinity",
"-Infinity".

**Signature**

```ts
declare const parseNumber: <S extends Schema.Any, A extends string>(self: S & Schema<A, Schema.Encoded<S>, Schema.Context<S>>) => transformOrFail<S, typeof Number$>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5311)

Since v3.10.0