Package: `@effect/workflow`<br />
Module: `Workflow`<br />

## Workflow.Workflow.Payload

Extracts the type of the Payload of a `Workflow`.

**Signature**

```ts
type Payload<W> = W extends Workflow<any, infer Payload, any, any>
    ? Payload["Type"]
    : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/Workflow.ts#L39)

Since v1.0.0