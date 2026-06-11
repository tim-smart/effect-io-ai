Package: `effect`<br />
Module: `ClusterError`<br />

## ClusterError.AlreadyProcessingMessage

Represents an error that occurs when the same request envelope is already
being processed.

**Details**

Carries the `address` and `envelopeId` for the affected request envelope.

**Signature**

```ts
declare class AlreadyProcessingMessage
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterError.ts#L216)

Since v4.0.0