Package: `effect`<br />
Module: `Differ`<br />

## Differ.zip

Combines this differ and the specified differ to produce a new differ that
knows how to diff the product of their values.

**Signature**

```ts
declare const zip: { <Value2, Patch2>(that: Differ<Value2, Patch2>): <Value, Patch>(self: Differ<Value, Patch>) => Differ<readonly [Value, Value2], readonly [Patch, Patch2]>; <Value, Patch, Value2, Patch2>(self: Differ<Value, Patch>, that: Differ<Value2, Patch2>): Differ<readonly [Value, Value2], readonly [Patch, Patch2]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L436)

Since v2.0.0