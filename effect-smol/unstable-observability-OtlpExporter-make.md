Package: `effect`<br />
Module: `OtlpExporter`<br />

## OtlpExporter.make

Creates a scoped OTLP batch exporter.

**Details**

The exporter buffers pushed data, periodically posts encoded batches to the
configured URL, retries transient failures, temporarily disables exporting
after unhandled failures, and flushes during scope finalization up to
`shutdownTimeout`.

**Signature**

```ts
declare const make: (options: { readonly url: string; readonly headers: Headers.Input | undefined; readonly label: string; readonly exportInterval: Duration.Input; readonly maxBatchSize: number | "disabled"; readonly body: (data: Array<any>) => HttpBody; readonly shutdownTimeout: Duration.Input; }) => Effect.Effect<{ readonly push: (data: unknown) => void; }, never, HttpClient.HttpClient | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpExporter.ts#L74)

Since v4.0.0