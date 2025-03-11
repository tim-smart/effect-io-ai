## readonlyArray

Constructs a differ that knows how to diff a `ReadonlyArray` of values.

**Signature**

```ts
declare const readonlyArray: <Value, Patch>(differ: Differ<Value, Patch>) => Differ<ReadonlyArray<Value>, Differ.ReadonlyArray.Patch<Value, Patch>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L388)

Since v2.0.0