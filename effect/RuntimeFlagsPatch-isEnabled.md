## isEnabled

Returns `true` if the `RuntimeFlagsPatch` describes the specified
`RuntimeFlag` as enabled.

**Signature**

```ts
declare const isEnabled: { (flag: RuntimeFlags.RuntimeFlag): (self: RuntimeFlagsPatch) => boolean; (self: RuntimeFlagsPatch, flag: RuntimeFlags.RuntimeFlag): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlagsPatch.ts#L73)

Since v2.0.0