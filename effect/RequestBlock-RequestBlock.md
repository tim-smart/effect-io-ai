## RequestBlock

`RequestBlock` captures a collection of blocked requests as a data
structure. By doing this the library is able to preserve information about
which requests must be performed sequentially and which can be performed in
parallel, allowing for maximum possible batching and pipelining while
preserving ordering guarantees.

**Signature**

```ts
type RequestBlock = Empty | Par | Seq | Single
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RequestBlock.ts#L18)

Since v2.0.0