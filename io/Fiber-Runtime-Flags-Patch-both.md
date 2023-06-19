# both

Creates a `RuntimeFlagsPatch` describing application of both the `self` patch
and `that` patch.

Part of the `Patch` module, imported from `@effect/io/Fiber/Runtime/Flags/Patch`.

**Signature**

```ts
export declare const both: {
  (that: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => RuntimeFlagsPatch
  (self: RuntimeFlagsPatch, that: RuntimeFlagsPatch): RuntimeFlagsPatch
}
```
