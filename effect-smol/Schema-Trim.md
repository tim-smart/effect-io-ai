Package: `effect`<br />
Module: `Schema`<br />

## Schema.Trim

Schema interface for `Trim`, a transformation that trims leading and trailing
whitespace while decoding and encodes the trimmed string unchanged.

**Signature**

```ts
export interface Trim extends decodeTo<Trimmed, String> {
  readonly "Rebuild": Trim
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11017)

Since v3.10.0