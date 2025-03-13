Package: `effect`<br />
Module: `Array`<br />

## Array.unsafeGet

Gets an element unsafely, will throw on out of bounds.

**Signature**

```ts
declare const unsafeGet: { (index: number): <A>(self: ReadonlyArray<A>) => A; <A>(self: ReadonlyArray<A>, index: number): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L627)

Since v2.0.0