## either

Creates a `RuntimeFlagsPatch` describing application of either the `self`
patch or `that` patch.

**Signature**

```ts
declare const either: { (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch; (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlagsPatch.ts#L133)

Since v2.0.0