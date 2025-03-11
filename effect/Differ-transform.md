## transform

Transforms the type of values that this differ knows how to differ using
the specified functions that map the new and old value types to each other.

**Signature**

```ts
declare const transform: { <Value, Value2>(options: { readonly toNew: (value: Value) => Value2; readonly toOld: (value: Value2) => Value; }): <Patch>(self: Differ<Value, Patch>) => Differ<Value2, Patch>; <Value, Patch, Value2>(self: Differ<Value, Patch>, options: { readonly toNew: (value: Value) => Value2; readonly toOld: (value: Value2) => Value; }): Differ<Value2, Patch>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L398)

Since v2.0.0