Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.encodeString

Creates a channel that encodes chunks of values as NDJSON strings.

**Details**

Each input item is `JSON.stringify`-encoded, separated by newlines, and the
output chunk ends with a trailing newline.

**Signature**

```ts
declare const encodeString: <IE = never, Done = unknown>() => Channel.Channel<Arr.NonEmptyReadonlyArray<string>, IE | NdjsonError, Done, Arr.NonEmptyReadonlyArray<unknown>, IE, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L65)

Since v4.0.0