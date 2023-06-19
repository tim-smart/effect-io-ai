# WindDown

The wind down flag determines whether the Effect runtime system will execute
effects in wind-down mode. In wind-down mode, even if interruption is
enabled and a fiber has been interrupted, the fiber will continue its
execution uninterrupted.

Part of the `Flags` module, imported from `@effect/io/Fiber/Runtime/Flags`.

**Signature**

```ts
export declare const WindDown: RuntimeFlag
```
