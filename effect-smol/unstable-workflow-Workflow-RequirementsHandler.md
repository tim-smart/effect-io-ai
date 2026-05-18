Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.RequirementsHandler

Computes the schema services required by handlers that decode workflow
payloads and encode workflow results.

**Signature**

```ts
type RequirementsHandler<Workflows> = Workflows extends Workflow<
  infer _Name,
  infer _Payload,
  infer _Success,
  infer _Error
> ?
    | _Payload["DecodingServices"]
    | _Payload["EncodingServices"]
    | _Success["DecodingServices"]
    | _Success["EncodingServices"]
    | _Error["DecodingServices"]
    | _Error["EncodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L291)

Since v4.0.0