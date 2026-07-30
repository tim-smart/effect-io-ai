Package: `effect`<br />
Module: `Array`<br />

## Array.get

This function provides a safe way to read a value at a particular index from a `ReadonlyArray`.

**Signature**

```ts
declare const get: { (index: number): <A>(self: ReadonlyArray<A>) => Option.Option<A>; <A>(self: ReadonlyArray<A>, index: number): Option.Option<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L610)

Since v2.0.0