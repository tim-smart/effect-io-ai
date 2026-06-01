Package: `effect`<br />
Module: `ResponseIdTracker`<br />

## ResponseIdTracker.make

Creates an in-memory `ResponseIdTracker` service.

**Details**

The tracker maps prompt message object identities to provider response IDs.
`prepareUnsafe` returns a previous response ID and the messages after the
latest assistant turn only when the existing prompt prefix is fully tracked;
otherwise it clears the tracked state and returns `Option.none()`.

**Signature**

```ts
declare const make: Effect.Effect<Service, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ResponseIdTracker.ts#L108)

Since v4.0.0