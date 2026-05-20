Package: `effect`<br />
Module: `Sse`<br />

## Sse.decode

Creates a channel that parses Server-Sent Events text chunks into `Event` values.

**Details**

SSE `retry` directives are emitted as `Retry` failures so callers can
reconnect with the requested delay.

**Signature**

```ts
declare const decode: <IE, Done>() => Channel.Channel<NonEmptyReadonlyArray<Event>, IE | Retry, Done, NonEmptyReadonlyArray<string>, IE, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sse.ts#L46)

Since v4.0.0