Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.decode

Creates a channel that decodes UTF-8 byte chunks and parses them as NDJSON.

**Details**

Lines may span input chunks, and `ignoreEmptyLines` controls whether blank
lines are skipped before JSON parsing.

**Signature**

```ts
declare const decode: <IE = never, Done = unknown>(options?: { readonly ignoreEmptyLines?: boolean | undefined; }) => Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, IE | NdjsonError, Done, Arr.NonEmptyReadonlyArray<Uint8Array>, IE, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L220)

Since v4.0.0