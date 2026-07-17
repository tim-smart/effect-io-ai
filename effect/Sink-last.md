Package: `effect`<br />
Module: `Sink`<br />

## Sink.last

Creates a sink containing the last value.

**When to use**

Use when you need to consume all upstream input and keep only the final
element.

**Details**

Returns `Option.some(last)` with the final input value, or `Option.none` when
the upstream ends without input.

**Gotchas**

This sink produces a result only when the upstream ends, so it does not
complete for a stream that does not end.

**See**

- `head` for taking the first input value instead

**Signature**

```ts
declare const last: <In>() => Sink<Option.Option<In>, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L1442)

Since v2.0.0