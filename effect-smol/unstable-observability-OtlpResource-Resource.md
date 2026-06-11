Package: `effect`<br />
Module: `OtlpResource`<br />

## OtlpResource.Resource

OTLP resource metadata attached to exported logs, metrics, and traces.

**Signature**

```ts
export interface Resource {
  /** Resource attributes */
  attributes: Array<KeyValue>
  /** Resource droppedAttributesCount */
  droppedAttributesCount: number
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpResource.ts#L22)

Since v4.0.0