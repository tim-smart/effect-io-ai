Package: `effect`<br />
Module: `WorkflowProxy`<br />

## WorkflowProxy.ConvertHttpApi

Maps each workflow to the HTTP API endpoints generated for execute,
discard, and resume operations.

**Signature**

```ts
type ConvertHttpApi<Workflows> = Workflows extends Workflow.Workflow<
  infer _Name,
  infer _Payload,
  infer _Success,
  infer _Error
> ?
    | HttpApiEndpoint.HttpApiEndpoint<
      _Name,
      "POST",
      `/${Lowercase<_Name>}`,
      never,
      never,
      _Payload,
      never,
      _Success,
      _Error
    >
    | HttpApiEndpoint.HttpApiEndpoint<
      `${_Name}Discard`,
      "POST",
      `/${Lowercase<_Name>}/discard`,
      never,
      never,
      _Payload
    >
    | HttpApiEndpoint.HttpApiEndpoint<
      `${_Name}Resume`,
      "POST",
      `/${Lowercase<_Name>}/resume`,
      never,
      never,
      typeof ResumePayload
    > :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/WorkflowProxy.ts#L193)

Since v4.0.0