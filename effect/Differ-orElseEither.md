Package: `effect`<br />
Module: `Differ`<br />

## Differ.orElseEither

Combines this differ and the specified differ to produce a differ that
knows how to diff the sum of their values.

**Signature**

```ts
declare const orElseEither: { <Value2, Patch2>(that: Differ<Value2, Patch2>): <Value, Patch>(self: Differ<Value, Patch>) => Differ<Either<Value2, Value>, Differ.Or.Patch<Value, Value2, Patch, Patch2>>; <Value, Patch, Value2, Patch2>(self: Differ<Value, Patch>, that: Differ<Value2, Patch2>): Differ<Either<Value2, Value>, Differ.Or.Patch<Value, Value2, Patch, Patch2>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L366)

Since v2.0.0