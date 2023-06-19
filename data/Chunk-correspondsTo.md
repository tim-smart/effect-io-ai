# correspondsTo

Compares the two chunks of equal length using the specified function

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const correspondsTo: {
  <A, B>(that: Chunk<B>, f: (a: A, b: B) => boolean): (self: Chunk<A>) => boolean
  <A, B>(self: Chunk<A>, that: Chunk<B>, f: (a: A, b: B) => boolean): boolean
}
```
