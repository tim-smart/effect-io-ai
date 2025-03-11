## diff

Creates a `RuntimeFlagsPatch` which describes the difference between `self`
and `that`.

**Signature**

```ts
declare const diff: { (that: RuntimeFlags): (self: RuntimeFlags) => RuntimeFlagsPatch.RuntimeFlagsPatch; (self: RuntimeFlags, that: RuntimeFlags): RuntimeFlagsPatch.RuntimeFlagsPatch; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L110)

Since v2.0.0