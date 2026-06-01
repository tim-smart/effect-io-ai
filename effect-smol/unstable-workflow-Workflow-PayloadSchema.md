Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.PayloadSchema

Extracts the payload schema from a `Workflow`.

**Signature**

```ts
type PayloadSchema<W> = W extends Workflow<
  infer _Name,
  infer _Payload,
  infer _Success,
  infer _Error
> ? _Payload
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L270)

Since v4.0.0