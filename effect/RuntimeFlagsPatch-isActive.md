Package: `effect`<br />
Module: `RuntimeFlagsPatch`<br />

## RuntimeFlagsPatch.isActive

Returns `true` if the `RuntimeFlagsPatch` describes the specified
`RuntimeFlag` as active.

**Signature**

```ts
declare const isActive: { (flag: RuntimeFlagsPatch): (self: RuntimeFlagsPatch) => boolean; (self: RuntimeFlagsPatch, flag: RuntimeFlagsPatch): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlagsPatch.ts#L61)

Since v2.0.0