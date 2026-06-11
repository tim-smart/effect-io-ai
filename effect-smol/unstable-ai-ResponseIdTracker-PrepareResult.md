Package: `effect`<br />
Module: `ResponseIdTracker`<br />

## ResponseIdTracker.PrepareResult

Result returned when a tracked prompt can be sent incrementally.

**Details**

It contains the provider response ID to pass as `previousResponseId` and the
prompt fragment containing only the new messages after the latest assistant
turn.

**Signature**

```ts
export interface PrepareResult {
  readonly previousResponseId: string
  readonly prompt: Prompt.Prompt
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ResponseIdTracker.ts#L29)

Since v4.0.0