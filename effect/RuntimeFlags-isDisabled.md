Package: `effect`<br />
Module: `RuntimeFlags`<br />

## RuntimeFlags.isDisabled

Returns `true` if the specified `RuntimeFlag` is disabled, `false` otherwise.

**Signature**

```ts
declare const isDisabled: { (flag: RuntimeFlag): (self: RuntimeFlags) => boolean; (self: RuntimeFlags, flag: RuntimeFlag): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L266)

Since v2.0.0