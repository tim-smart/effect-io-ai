Package: `effect`<br />
Module: `RuntimeFlagsPatch`<br />

## RuntimeFlagsPatch.disabledSet

Returns a `ReadonlySet<number>` containing the `RuntimeFlags` described as
disabled by the specified `RuntimeFlagsPatch`.

**Signature**

```ts
declare const disabledSet: (self: RuntimeFlagsPatch) => ReadonlySet<RuntimeFlags.RuntimeFlag>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlagsPatch.ts#L175)

Since v2.0.0