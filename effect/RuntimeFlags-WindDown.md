## WindDown

The wind down flag determines whether the Effect runtime system will execute
effects in wind-down mode. In wind-down mode, even if interruption is
enabled and a fiber has been interrupted, the fiber will continue its
execution uninterrupted.

**Signature**

```ts
declare const WindDown: RuntimeFlag
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L83)

Since v2.0.0