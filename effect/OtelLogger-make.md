Package: `@effect/opentelemetry`<br />
Module: `OtelLogger`<br />

## OtelLogger.make

Creates an Effect logger that emits log records through the configured OpenTelemetry logger provider.

**Signature**

```ts
declare const make: Effect.Effect<Logger.Logger<unknown, void>, never, OtelLoggerProvider>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/OtelLogger.ts#L79)

Since v4.0.0