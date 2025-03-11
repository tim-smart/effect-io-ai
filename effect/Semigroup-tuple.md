## tuple

Similar to `Promise.all` but operates on `Semigroup`s.

```
[Semigroup<A>, Semigroup<B>, ...] -> Semigroup<[A, B, ...]>
```

This function creates and returns a new `Semigroup` for a tuple of values based on the given `Semigroup`s for each element in the tuple.
The returned `Semigroup` combines two tuples of the same type by applying the corresponding `Semigroup` passed as arguments to each element in the tuple.

It is useful when you need to combine two tuples of the same type and you have a specific way of combining each element of the tuple.

**Signature**

```ts
declare const tuple: <T extends ReadonlyArray<Semigroup<any>>>(...elements: T) => Semigroup<{ readonly [I in keyof T]: [T[I]] extends [Semigroup<infer A>] ? A : never; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/typeclass/src/Semigroup.ts#L214)

Since v0.24.0