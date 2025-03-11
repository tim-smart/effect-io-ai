## map

Maps over the values of the `HashSet` using the specified function.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): (self: HashSet<A>) => HashSet<B>; <A, B>(self: HashSet<A>, f: (a: A) => B): HashSet<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L238)

Since v2.0.0