## isEnabled

Returns `true` if the specified `RuntimeFlag` is enabled, `false` otherwise.

**Signature**

```ts
declare const isEnabled: { (flag: RuntimeFlag): (self: RuntimeFlags) => boolean; (self: RuntimeFlags, flag: RuntimeFlag): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L255)

Since v2.0.0