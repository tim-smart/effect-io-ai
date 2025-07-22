Package: `effect`<br />
Module: `Array`<br />

## Array.every

Check if a predicate holds true for every `ReadonlyArray` element.

**Signature**

```ts
declare const every: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: ReadonlyArray<A>) => self is ReadonlyArray<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: ReadonlyArray<A>) => boolean; <A, B extends A>(self: ReadonlyArray<A>, refinement: (a: A, i: number) => a is B): self is ReadonlyArray<B>; <A>(self: ReadonlyArray<A>, predicate: (a: A, i: number) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2986)

Since v2.0.0