# enable

Enables the specified `RuntimeFlag`.

Part of the `Flags` module, imported from `@effect/io/Fiber/Runtime/Flags`.

**Signature**

```ts
export declare const enable: {
  (flag: RuntimeFlag): (self: RuntimeFlags) => RuntimeFlags
  (self: RuntimeFlags, flag: RuntimeFlag): RuntimeFlags
}
```
