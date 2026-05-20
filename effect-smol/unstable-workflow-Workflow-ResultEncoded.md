Package: `effect`<br />
Module: `Workflow`<br />

## Workflow.ResultEncoded

Encoded representation of a workflow `Result`.

**Signature**

```ts
type ResultEncoded<A, E> = | CompleteEncoded<A, E>
  | typeof Suspended.Encoded
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Workflow.ts#L472)

Since v4.0.0