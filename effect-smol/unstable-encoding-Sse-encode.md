Package: `effect`<br />
Module: `Sse`<br />

## Sse.encode

Creates a channel that encodes `Event` values as Server-Sent Events text.

**Details**

If the upstream channel fails with `Retry`, the retry directive is written and
the encoder completes.

**Signature**

```ts
declare const encode: <IE, Done>() => Channel.Channel<NonEmptyReadonlyArray<string>, IE, void, NonEmptyReadonlyArray<Event>, IE | Retry, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L355)

Since v4.0.0