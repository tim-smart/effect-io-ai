# unzip

Takes an array of pairs and return two corresponding arrays.

Note: The function is reverse of `zip`.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const unzip: <A, B>(as: Chunk<readonly [A, B]>) => readonly [Chunk<A>, Chunk<B>]
```
