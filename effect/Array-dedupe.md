Package: `effect`<br />
Module: `Array`<br />

## Array.dedupe

Remove duplicates from an `Iterable`, preserving the order of the first occurrence of each element.
The equivalence used to compare elements is provided by `Equal.equivalence()` from the `Equal` module.

**Signature**

```ts
declare const dedupe: <S extends Iterable<any>>(self: S) => S extends NonEmptyReadonlyArray<infer A> ? NonEmptyArray<A> : S extends Iterable<infer A> ? Array<A> : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3202)

Since v2.0.0