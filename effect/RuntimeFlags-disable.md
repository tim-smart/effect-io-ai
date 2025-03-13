Package: `effect`<br />
Module: `RuntimeFlags`<br />

## RuntimeFlags.disable

Disables the specified `RuntimeFlag`.

**Signature**

```ts
declare const disable: { (flag: RuntimeFlag): (self: RuntimeFlags) => RuntimeFlags; (self: RuntimeFlags, flag: RuntimeFlag): RuntimeFlags; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L129)

Since v2.0.0