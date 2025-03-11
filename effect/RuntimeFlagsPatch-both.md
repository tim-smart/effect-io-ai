## both

Creates a `RuntimeFlagsPatch` describing application of both the `self` patch
and `that` patch.

**Signature**

```ts
declare const both: { (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch; (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlagsPatch.ts#L121)

Since v2.0.0