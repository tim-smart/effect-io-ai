Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.make

Builds a `NonEmptyChunk` from an non-empty collection of elements.

**Signature**

```ts
declare const make: <As extends readonly [any, ...ReadonlyArray<any>]>(...as: As) => NonEmptyChunk<As[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chunk.ts#L233)

Since v2.0.0