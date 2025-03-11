## enabledSet

Returns a `ReadonlySet<number>` containing the `RuntimeFlags` described as
enabled by the specified `RuntimeFlagsPatch`.

**Signature**

```ts
declare const enabledSet: (self: RuntimeFlagsPatch) => ReadonlySet<RuntimeFlags.RuntimeFlag>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlagsPatch.ts#L166)

Since v2.0.0