## forEach

Iterates over each element of a `Chunk` and applies a function to it.

**Details**

This function processes every element of the given `Chunk`, calling the
provided function `f` on each element. It does not return a new value;
instead, it is primarily used for side effects, such as logging or
accumulating data in an external variable.

**Signature**

```ts
declare const forEach: { <A, B>(f: (a: A, index: number) => B): (self: Chunk<A>) => void; <A, B>(self: Chunk<A>, f: (a: A, index: number) => B): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L756)

Since v2.0.0