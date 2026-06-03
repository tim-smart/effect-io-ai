Package: `effect`<br />
Module: `OtlpResource`<br />

## OtlpResource.unknownToAttributeValue

Converts an arbitrary JavaScript value into an OTLP `AnyValue`.

**Details**

Arrays are converted recursively, primitive values use their matching OTLP
fields, and unsupported values are formatted as strings.

**Signature**

```ts
declare const unknownToAttributeValue: (value: unknown) => AnyValue
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpResource.ts#L207)

Since v4.0.0