Package: `effect`<br />
Module: `Reply`<br />

## Reply.Reply

Runtime reply sent for an RPC request.

A reply is either a final exit or a chunk of a streaming success value.

**Signature**

```ts
type Reply<R> = WithExit<R> | Chunk<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Reply.ts#L63)

Since v4.0.0