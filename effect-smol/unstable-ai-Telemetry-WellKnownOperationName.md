Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.WellKnownOperationName

The `gen_ai.operation.name` attribute has the following list of well-known
values.

If one of them applies, then the respective value **MUST** be used;
otherwise, a custom value **MAY** be used.

**Signature**

```ts
type WellKnownOperationName = "chat" | "embeddings" | "text_completion"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L209)

Since v4.0.0