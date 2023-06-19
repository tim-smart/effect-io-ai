# every

Check if a predicate holds true for every `Chunk` member.

Part of the `Chunk` module, imported from `@effect/data/Chunk`.

**Signature**

```ts
export declare const every: {
  <A>(f: Predicate<A>): (self: Chunk<A>) => boolean
  <A>(self: Chunk<A>, f: Predicate<A>): boolean
}
```
