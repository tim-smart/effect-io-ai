# includes

Returns `true` if the `RuntimeFlagsPatch` includes the specified
`RuntimeFlag`, `false` otherwise.

Part of the `Patch` module, imported from `@effect/io/Fiber/Runtime/Flags/Patch`.

**Signature**

```ts
export declare const includes: {
  (flag: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlagsPatch): boolean
}
```
