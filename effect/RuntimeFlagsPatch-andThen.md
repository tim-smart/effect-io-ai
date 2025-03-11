## andThen

Creates a `RuntimeFlagsPatch` describing the application of the `self` patch,
followed by `that` patch.

**Signature**

```ts
declare const andThen: { (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch; (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlagsPatch.ts#L109)

Since v2.0.0