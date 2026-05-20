Package: `effect`<br />
Module: `OtlpResource`<br />

## OtlpResource.KeyValue

An OTLP attribute represented as a string key and typed value.

**Signature**

```ts
export interface KeyValue {
  /** KeyValue key */
  key: string
  /** KeyValue value */
  value: AnyValue
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpResource.ts#L215)

Since v4.0.0