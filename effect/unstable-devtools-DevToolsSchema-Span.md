Package: `effect`<br />
Module: `DevToolsSchema`<br />

## DevToolsSchema.Span

Telemetry payload for an Effect span sent to devtools, including identity,
attributes, status, sampling flag, and optional parent span.

**Signature**

```ts
export interface Span {
  readonly _tag: "Span"
  readonly spanId: string
  readonly traceId: string
  readonly name: string
  readonly sampled: boolean
  readonly attributes: ReadonlyMap<string, unknown>
  readonly status: SpanStatus
  readonly parent: Option.Option<ParentSpan>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DevToolsSchema.ts#L121)

Since v4.0.0