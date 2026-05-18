Package: `effect`<br />
Module: `Schema`<br />

## Schema.TemplateLiteral.Encoded

Computes the encoded string literal type produced by concatenating the encoded
forms of all template literal parts.

**Signature**

```ts
type Encoded<Parts> = Parts extends readonly [...infer Init, infer Last] ? AppendType<Encoded<Init>, Last>
    : ``
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1987)

Since v4.0.0