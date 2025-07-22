Package: `effect`<br />
Module: `Array`<br />

## Array.some

Check if a predicate holds true for some `ReadonlyArray` element.

**Signature**

```ts
declare const some: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: ReadonlyArray<A>) => self is NonEmptyReadonlyArray<A>; <A>(self: ReadonlyArray<A>, predicate: (a: A, i: number) => boolean): self is NonEmptyReadonlyArray<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3005)

Since v2.0.0