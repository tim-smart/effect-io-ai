Package: `effect`<br />
Module: `Ndjson`<br />

## Ndjson.decodeString

Creates a channel that parses NDJSON string chunks into values.

**Details**

Lines may span input chunks.

**Gotchas**

Set `ignoreEmptyLines` to skip blank lines before calling `JSON.parse`;
otherwise blank lines are parsed and fail as invalid JSON.

**Signature**

```ts
declare const decodeString: <IE = never, Done = unknown>(options?: { readonly ignoreEmptyLines?: boolean | undefined; }) => Channel.Channel<Arr.NonEmptyReadonlyArray<unknown>, IE | NdjsonError, Done, Arr.NonEmptyReadonlyArray<string>, IE, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Ndjson.ts#L185)

Since v4.0.0