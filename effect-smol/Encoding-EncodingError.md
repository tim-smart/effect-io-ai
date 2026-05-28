Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.EncodingError

Error returned when an encoding or decoding operation cannot process its
input.

**When to use**

Use when you need to handle or inspect failures from encoding or decoding
operations.

**Details**

The error records whether the failure happened during encoding or decoding,
which encoding module reported it, the original input, and a human-readable
message.

**See**

- `isEncodingError` for checking whether a value is an EncodingError

**Signature**

```ts
declare class EncodingError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L106)

Since v4.0.0