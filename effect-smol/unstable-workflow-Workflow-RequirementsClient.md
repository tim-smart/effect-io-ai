Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.RequirementsClient

Computes the schema services required by clients that execute or poll
workflows.

**Signature**

```ts
type RequirementsClient<Workflows> = Workflows extends Workflow<
  infer _Name,
  infer _Payload,
  infer _Success,
  infer _Error
> ?
    | _Payload["EncodingServices"]
    | _Success["DecodingServices"]
    | _Error["DecodingServices"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L274)

Since v4.0.0