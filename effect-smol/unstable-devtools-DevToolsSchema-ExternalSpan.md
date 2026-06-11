Package: `effect`<br />
Module: `DevToolsSchema`<br />

## DevToolsSchema.ExternalSpan

Serialized parent span context for a span created outside the current
devtools span tree.

**Signature**

```ts
export interface ExternalSpan {
  readonly _tag: "ExternalSpan"
  readonly spanId: string
  readonly traceId: string
  readonly sampled: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DevToolsSchema.ts#L93)

Since v4.0.0