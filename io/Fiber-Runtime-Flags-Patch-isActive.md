# isActive

Returns `true` if the `RuntimeFlagsPatch` describes the specified
`RuntimeFlag` as active.

Part of the `Patch` module, imported from `@effect/io/Fiber/Runtime/Flags/Patch`.

**Signature**

```ts
export declare const isActive: {
  (flag: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => boolean
  (self: RuntimeFlagsPatch, flag: RuntimeFlagsPatch): boolean
}
```
