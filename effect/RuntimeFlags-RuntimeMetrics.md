## RuntimeMetrics

The runtime metrics flag determines whether or not the Effect runtime system
will collect metrics about the Effect runtime. Use of this flag will have a
very small negative impact on performance, but generates very helpful
operational insight into running Effect applications that can be exported to
Prometheus or other tools via Effect Metrics.

**Signature**

```ts
declare const RuntimeMetrics: RuntimeFlag
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RuntimeFlags.ts#L72)

Since v2.0.0