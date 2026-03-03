Package: `effect`<br />
Module: `Schema`<br />

## Schema.Trim

A transformation schema that trims whitespace from a string.

Decoding:
- A `string` is decoded as a string with no leading or trailing whitespaces.

Encoding:
- The trimmed string is encoded as is.

**Signature**

```ts
declare const Trim: Trim
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7549)

Since v4.0.0