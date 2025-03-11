## splitLines

Splits strings on newlines. Handles both Windows newlines (`\r\n`) and UNIX
newlines (`\n`).

**Signature**

```ts
declare const splitLines: <Err, Done>() => Channel<Chunk.Chunk<string>, Chunk.Chunk<string>, Err, Err, Done, Done, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Channel.ts#L1999)

Since v2.0.0