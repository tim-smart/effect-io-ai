Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.EncodingError

Error returned when an encoding or decoding operation cannot process its
input.

The error records whether the failure happened during encoding or decoding,
which encoding module reported it, the original input, and a human-readable
message.

**Signature**

```ts
declare class EncodingError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L42)

Since v4.0.0