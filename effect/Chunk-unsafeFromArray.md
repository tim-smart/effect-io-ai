## unsafeFromArray

Wraps an array into a chunk without copying, unsafe on mutable arrays

**Signature**

```ts
declare const unsafeFromArray: <A>(self: ReadonlyArray<A>) => Chunk<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L387)

Since v2.0.0