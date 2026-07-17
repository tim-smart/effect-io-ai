Package: `effect`<br />
Module: `ResponseIdTracker`<br />

## ResponseIdTracker.Service

Mutable service that tracks prompt message object identities by provider
response ID.

**Details**

`markParts` records the prompt messages that produced a response,
`prepareUnsafe` returns a `previousResponseId` plus the untracked suffix when
the prompt prefix is fully recognized, and `clearUnsafe` drops all tracked
state.

**Signature**

```ts
export interface Service {
  clearUnsafe(): void
  markParts(parts: ReadonlyArray<object>, responseId: string): void
  prepareUnsafe(prompt: Prompt.Prompt): Option.Option<PrepareResult>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ResponseIdTracker.ts#L48)

Since v4.0.0