Package: `effect`<br />
Module: `WorkflowProxy`<br />

## WorkflowProxy.ConvertRpcs

Maps each workflow to the RPC definitions generated for execute, discard,
and resume operations.

**Signature**

```ts
type ConvertRpcs<Workflows, Prefix> = Workflows extends Workflow.Workflow<
  infer _Name,
  infer _Payload,
  infer _Success,
  infer _Error
> ?
    | Rpc.Rpc<`${Prefix}${_Name}`, _Payload, _Success, _Error>
    | Rpc.Rpc<`${Prefix}${_Name}Discard`, _Payload>
    | Rpc.Rpc<`${Prefix}${_Name}Resume`, typeof ResumePayload>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowProxy.ts#L90)

Since v4.0.0