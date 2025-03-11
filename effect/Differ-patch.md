## patch

Applies a patch to an old value to produce a new value that is equal to the
old value with the updates described by the patch.

**Signature**

```ts
declare const patch: { <Patch, Value>(patch: Patch, oldValue: Value): (self: Differ<Value, Patch>) => Value; <Patch, Value>(self: Differ<Value, Patch>, patch: Patch, oldValue: Value): Value; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L285)

Since v2.0.0