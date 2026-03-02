Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.MinimumTraceLevel

Reference for setting the minimum trace level threshold. Spans and their
descendants below this level will have their sampling decision forced to
false, preventing them from being exported.

**Signature**

```ts
declare const MinimumTraceLevel: ServiceMap.Reference<LogLevel>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L365)

Since v4.0.0