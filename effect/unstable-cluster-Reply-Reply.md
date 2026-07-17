Package: `effect`<br />
Module: `Reply`<br />

## Reply.Reply

Runtime reply sent for an RPC request, either as a final exit or a chunk of a
streaming success value.

**Signature**

```ts
type Reply<R> = WithExit<R> | Chunk<R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Reply.ts#L49)

Since v4.0.0