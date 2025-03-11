## patch

Patches a set of `RuntimeFlag`s with a `RuntimeFlagsPatch`, returning the
patched set of `RuntimeFlag`s.

**Signature**

```ts
declare const patch: { (patch: RuntimeFlagsPatch.RuntimeFlagsPatch): (self: RuntimeFlags) => RuntimeFlags; (self: RuntimeFlags, patch: RuntimeFlagsPatch.RuntimeFlagsPatch): RuntimeFlags; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L299)

Since v2.0.0