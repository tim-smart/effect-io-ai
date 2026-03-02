Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.AllAttributes

All telemetry attributes which are part of the GenAI specification.

**Signature**

```ts
type AllAttributes = & BaseAttributes
  & OperationAttributes
  & TokenAttributes
  & UsageAttributes
  & RequestAttributes
  & ResponseAttributes
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L67)

Since v4.0.0